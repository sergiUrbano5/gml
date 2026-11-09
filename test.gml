<?xml version="1.0" encoding="UTF-8"?>
<gml:FeatureCollection 
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:test="http://www.example.org/test"
    xsi:schemaLocation="http://www.opengis.net/gml/3.2 http://schemas.opengis.net/gml/3.2.1/gml.xsd"
    gml:id="TestFeatureCollection">
    
    <gml:description>Dataset completo de prueba para validar geometrías GML 3.2.1 en OpenLayers y Leaflet</gml:description>
    <gml:name>TestSuiteGML32</gml:name>

    <gml:featureMember>
        <test:PuntoTest gml:id="Punto_1">
            <test:nombre>Punto de Control Principal</test:nombre>
            <test:geometria>
                <gml:Point gml:id="pt_1" srsName="http://www.opengis.net/def/crs/EPSG/0/4326">
                    <gml:pos>2.1734 41.3851</gml:pos>
                </gml:Point>
            </test:geometria>
        </test:PuntoTest>
    </gml:featureMember>

    <gml:featureMember>
        <test:LineaTest gml:id="Linea_1">
            <test:nombre>Ruta o Eje Vial</test:nombre>
            <test:geometria>
                <gml:LineString gml:id="ls_1" srsName="http://www.opengis.net/def/crs/EPSG/0/4326">
                    <gml:posList>2.15 41.38  2.16 41.39  2.17 41.40</gml:posList>
                </gml:LineString>
            </test:geometria>
        </test:LineaTest>
    </gml:featureMember>

    <gml:featureMember>
        <test:PoligonoTest gml:id="Poligono_1">
            <test:nombre>Zona con Hueco Interior</test:nombre>
            <test:geometria>
                <gml:Polygon gml:id="poly_1" srsName="http://www.opengis.net/def/crs/EPSG/0/4326">
                    <gml:exterior>
                        <gml:LinearRing>
                            <gml:posList>2.10 41.30  2.20 41.30  2.20 41.40  2.10 41.40  2.10 41.30</gml:posList>
                        </gml:LinearRing>
                    </gml:exterior>
                    <gml:interior>
                        <gml:LinearRing>
                            <gml:posList>2.13 41.33  2.17 41.33  2.17 41.37  2.13 41.37  2.13 41.33</gml:posList>
                        </gml:LinearRing>
                    </gml:interior>
                </gml:Polygon>
            </test:geometria>
        </test:PoligonoTest>
    </gml:featureMember>

    <gml:featureMember>
        <test:MultiCurvaTest gml:id="MultiCurva_1">
            <test:nombre>Red de Líneas Múltiples</test:nombre>
            <test:geometria>
                <gml:MultiCurve gml:id="mc_1" srsName="http://www.opengis.net/def/crs/EPSG/0/4326">
                    <gml:curveMember>
                        <gml:LineString gml:id="ls_sub1">
                            <gml:posList>2.11 41.31  2.12 41.32</gml:posList>
                        </gml:LineString>
                    </gml:curveMember>
                    <gml:curveMember>
                        <gml:LineString gml:id="ls_sub2">
                            <gml:posList>2.18 41.38  2.19 41.39</gml:posList>
                        </gml:LineString>
                    </gml:curveMember>
                </gml:MultiCurve>
            </test:geometria>
        </test:MultiCurvaTest>
    </gml:featureMember>

    <gml:featureMember>
        <test:MultiSuperficieTest gml:id="MultiSup_1">
            <test:nombre>Superficies Múltiples (Islas o Polígonos disjuntos)</test:nombre>
            <test:geometria>
                <gml:MultiSurface gml:id="ms_1" srsName="http://www.opengis.net/def/crs/EPSG/0/4326">
                    <gml:surfaceMember>
                        <gml:Polygon gml:id="poly_sub1">
                            <gml:exterior>
                                <gml:LinearRing>
                                    <gml:posList>2.0 41.0  2.1 41.0  2.1 41.1  2.0 41.1  2.0 41.0</gml:posList>
                                </gml:LinearRing>
                            </gml:exterior>
                        </gml:Polygon>
                    </gml:surfaceMember>
                    <gml:surfaceMember>
                        <gml:Polygon gml:id="poly_sub2">
                            <gml:exterior>
                                <gml:LinearRing>
                                    <gml:posList>2.2 41.2  2.3 41.2  2.3 41.3  2.2 41.3  2.2 41.2</gml:posList>
                                </gml:LinearRing>
                            </gml:exterior>
                        </gml:Polygon>
                    </gml:surfaceMember>
                </gml:MultiSurface>
            </test:geometria>
        </test:MultiSuperficieTest>
    </gml:featureMember>

</gml:FeatureCollection>
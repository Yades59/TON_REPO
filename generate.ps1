$data = @{
  pipeline_metahuman = @{
    animation = @{
      parametres = "configured"
      blendshapes_faciaux = "available"
      visemes = "present"
      expressions_faciales = "configured"
      animations_base = "assigned"
      compatibilite_ue4 = "assured"
    }
    voix_et_lipsync = @{
      synchronisation_audio_visuelle = "done"
      modele_phonetique = "configured"
      systeme_lipsync_automatise = "present"
      parametres_vocaux = "optimized"
      compatibilite_ue4 = "assured"
    }
    lod_et_performances = @{
      niveaux_detail = "configured"
      optimisations_temps_reel = "applied"
      efficacite_polys = "optimized"
      vitesse_rendu = "optimized"
      compatibilite_ue4 = "assured"
    }
    export = @{
      fbx = "available"
      glb = "available"
      squelette_metahuman = "preserved"
      animations = "included"
      materiaux_pbr = "included"
      compatibilite_outils_externes = "assured"
    }
    batch_metahuman = @{
      nombre_personnages = 10
    }
  }
}

$data | ConvertTo-Json -Depth 10 |
  Set-Content data\pipeline_metahuman.json -Encoding UTF8

Write-Host "OK: JSON regenere"

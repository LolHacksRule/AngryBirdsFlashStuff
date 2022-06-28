package §3!3§
{
   import §"L§.LevelModel;
   import §2!H§.LevelMain;
   import §3p§.LevelObject;
   import §3p§.LevelObjectManager;
   import §6!7§.Sprite;
   import §7H§.§%d§;
   import §=?§.SoundEngine;
   import §?j§.FacebookUserProgress;
   
   public class FacebookLevelObjectManager extends LevelObjectManager
   {
       
      
      public function FacebookLevelObjectManager(newLevelMain:LevelMain, level:LevelModel, sprite:Sprite)
      {
         super(newLevelMain,level,sprite);
      }
      
      override public function addObject(itemName:String, x:Number, y:Number, rotation:Number = 0, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0, onFrontLayer:Boolean = false) : LevelObject
      {
         var easterEggId:String = null;
         if(itemName.indexOf("MISC_EASTER_EGG_") == 0)
         {
            easterEggId = "1000-" + itemName.split("_")[3];
            if((AngryBirdsFP11.sUserProgress as FacebookUserProgress).isEggUnlocked(easterEggId))
            {
               return null;
            }
         }
         return super.addObject(itemName,x,y,rotation,trail,activeObject,tryToScream,scale,onFrontLayer);
      }
      
      override protected function createObject(objSprite:Sprite, itemName:String, x:Number, y:Number, rotation:Number = 0, trail:Boolean = false, activeObject:Boolean = false, tryToScream:Boolean = true, scale:Number = 1.0) : LevelObject
      {
         if(itemName.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new FacebookLevelObjectGoldenEgg(this,objSprite,§"!>§.mLevelEngine.mWorld,§"!>§,§-!,§,itemName,x,y,rotation,scale);
         }
         return super.createObject(objSprite,itemName,x,y,rotation,trail,activeObject,tryToScream,scale);
      }
      
      public function §`!2§(x:Number, y:Number, rotation:Number = 0, scale:Number = 1) : §%d§
      {
         var objSprite:Sprite = new Sprite();
         var obj:§%d§ = new §%d§(this,objSprite,§"!>§.mLevelEngine.mWorld,§"!>§,§-!,§,x,y,rotation,scale);
         §8c§[§8c§.length] = obj;
         §!!@§.addChild(objSprite);
         return obj;
      }
      
      override public function addExplosions(type:int, x:Number, y:Number) : void
      {
         §?h§.push(§!t§.createExplosion(type,x,y));
         SoundEngine.§9!X§("TntExplosions","ChannelExplosions");
      }
   }
}

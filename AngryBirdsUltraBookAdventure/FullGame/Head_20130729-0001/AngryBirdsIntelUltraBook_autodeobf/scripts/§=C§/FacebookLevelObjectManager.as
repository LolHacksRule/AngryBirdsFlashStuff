package §=C§
{
   import § 3§.FacebookUserProgress;
   import §!!0§.SoundEngine;
   import §#!,§.Sprite;
   import §6!!§.LevelObject;
   import §6!!§.LevelObjectManager;
   import §>!_§.LevelModel;
   import §[!h§.§<v§;
   import §]!@§.LevelMain;
   
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
            return new FacebookLevelObjectGoldenEgg(this,objSprite,§`s§.mLevelEngine.mWorld,§`s§,§8!,§,itemName,x,y,rotation,scale);
         }
         return super.createObject(objSprite,itemName,x,y,rotation,trail,activeObject,tryToScream,scale);
      }
      
      public function §+!X§(x:Number, y:Number, rotation:Number = 0, scale:Number = 1) : §<v§
      {
         var objSprite:Sprite = new Sprite();
         var obj:§<v§ = new §<v§(this,objSprite,§`s§.mLevelEngine.mWorld,§`s§,§8!,§,x,y,rotation,scale);
         §4g§[§4g§.length] = obj;
         §[!8§.addChild(objSprite);
         return obj;
      }
      
      override public function addExplosions(type:int, x:Number, y:Number) : void
      {
         §6!>§.push(§6!`§.createExplosion(type,x,y));
         SoundEngine.§-!h§("TntExplosions","ChannelExplosions");
      }
   }
}

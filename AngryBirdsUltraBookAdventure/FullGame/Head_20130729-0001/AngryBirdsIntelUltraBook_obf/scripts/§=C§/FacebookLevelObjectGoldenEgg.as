package §=C§
{
   import § 3§.FacebookUserProgress;
   import §#!,§.Sprite;
   import §6!!§.LevelObject;
   import §6!!§.LevelObjectManager;
   import §>!L§.b2World;
   import §]!@§.LevelMain;
   
   public class FacebookLevelObjectGoldenEgg extends LevelObject
   {
       
      
      public function FacebookLevelObjectGoldenEgg(aLevelObjects:LevelObjectManager, aSprite:Sprite, aWorld:b2World, aMain:LevelMain, aId:int, aItemName:String, aX:Number, aY:Number, aRotation:Number, scale:Number, aFront:Boolean = false)
      {
         super(aLevelObjects,aSprite,aWorld,aMain,aId,aItemName,aX,aY,aRotation,scale,aFront);
      }
      
      override public function applyDamage(damage:Number, addScore:Boolean = true, damagedByBird:Boolean = false, damagerFullHealth:Boolean = false, damageFromExplosion:Boolean = false, forceDestroy:Boolean = false) : Number
      {
         super.applyDamage(damage,addScore,damagedByBird,damagerFullHealth,damageFromExplosion,forceDestroy);
         if(§3W§ <= 0)
         {
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).setEggUnlocked("1000-" + § I§.split("_")[3]);
         }
         return §3W§;
      }
   }
}

package §3!3§
{
   import §2!H§.LevelMain;
   import §3p§.LevelObject;
   import §3p§.LevelObjectManager;
   import §6!7§.Sprite;
   import §?j§.FacebookUserProgress;
   import §]=§.b2World;
   
   public class FacebookLevelObjectGoldenEgg extends LevelObject
   {
       
      
      public function FacebookLevelObjectGoldenEgg(aLevelObjects:LevelObjectManager, aSprite:Sprite, aWorld:b2World, aMain:LevelMain, aId:int, aItemName:String, aX:Number, aY:Number, aRotation:Number, scale:Number, aFront:Boolean = false)
      {
         super(aLevelObjects,aSprite,aWorld,aMain,aId,aItemName,aX,aY,aRotation,scale,aFront);
      }
      
      override public function applyDamage(damage:Number, addScore:Boolean = true, damagedByBird:Boolean = false, damagerFullHealth:Boolean = false, damageFromExplosion:Boolean = false, forceDestroy:Boolean = false) : Number
      {
         super.applyDamage(damage,addScore,damagedByBird,damagerFullHealth,damageFromExplosion,forceDestroy);
         if(§0o§ <= 0)
         {
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).setEggUnlocked("1000-" + §#>§.split("_")[3]);
         }
         return §0o§;
      }
   }
}

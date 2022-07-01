package §"!-§
{
   import §!!<§.§>"4§;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §<!A§.§false§;
   import §>!a§.§-?§;
   import §@"1§.§"h§;
   
   public class §5b§ extends §1i§
   {
       
      
      public function §5b§(param1:§"h§, param2:§-?§, param3:Sprite, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function objectIsOutOfBounds(param1:§@!4§) : Boolean
      {
         return false;
      }
      
      override protected function addObjectBird(param1:§false§, param2:Sprite, param3:§7!t§, param4:§>"4§, param5:Number = 1.0, param6:Boolean = true) : § !§
      {
         var _loc7_:§ !§;
         (_loc7_ = super.addObjectBird(param1,param2,param3,param4,param5,param6)).§`d§();
         return _loc7_;
      }
   }
}

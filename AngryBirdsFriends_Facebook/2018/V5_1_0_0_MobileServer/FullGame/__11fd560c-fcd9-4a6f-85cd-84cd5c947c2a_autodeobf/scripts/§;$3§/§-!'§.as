package §;$3§
{
   public class §-!'§ extends §5$>§
   {
      
      protected static var §1!F§:Object = {};
      
      {
         §["i§();
      }
      
      protected var §7!E§:String = "";
      
      public function §-!'§()
      {
         super();
      }
      
      public static function §%"S§(param1:String) : §-!'§
      {
         var _loc2_:§-!'§ = new §-!'§();
         _loc2_.readFromLua(param1);
         return _loc2_;
      }
      
      public static function §%!I§(param1:String) : §-!'§
      {
         var _loc2_:§-!'§ = new §-!'§();
         _loc2_.readDataFromJSON(param1);
         return _loc2_;
      }
      
      public static function §,K§(param1:String) : String
      {
         return §1!F§[param1] || param1;
      }
      
      protected static function §["i§() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get optimalPowerup() : String
      {
         return this.§7!E§;
      }
      
      public function set optimalPowerup(param1:String) : void
      {
         this.§7!E§ = param1;
      }
      
      override public function readDataFromJSON(param1:String) : void
      {
         super.readDataFromJSON(param1);
         var _loc2_:Object = JSON.parse(param1);
         if(_loc2_.worldGravity)
         {
            §<!7§ = _loc2_.worldGravity;
         }
         else if(§<!7§ == 0)
         {
            §<!7§ = 20;
         }
         if(§^!0§ == 0)
         {
            §@!F§ = true;
         }
         if(isNaN(§5#l§) && isNaN(§'"I§))
         {
            if(mBirds && mBirds.length > 0)
            {
               §5#l§ = mBirds[0].x;
               §'"I§ = mBirds[0].y - 8.5;
            }
         }
         var _loc3_:Number = 0;
         while(_loc3_ < §4$8§.length)
         {
            §4$8§[_loc3_].angle = §4$8§[_loc3_].angle;
            _loc3_++;
         }
         this.§7!E§ = "";
         if(_loc2_.optimalPowerup)
         {
            this.§7!E§ = _loc2_.optimalPowerup;
         }
         if(_loc2_.borderTop)
         {
            §8!n§ = _loc2_.borderTop;
         }
         else
         {
            §8!n§ = 0;
         }
         if(_loc2_.borderGround)
         {
            §1$4§ = _loc2_.borderGround;
         }
         else
         {
            §1$4§ = 0;
         }
         if(_loc2_.borderLeft)
         {
            § "T§ = _loc2_.borderLeft;
         }
         else
         {
            § "T§ = 0;
         }
         if(_loc2_.borderRight)
         {
            §0#A§ = _loc2_.borderRight;
         }
         else
         {
            §0#A§ = 0;
         }
      }
      
      override protected function readFromLua(param1:String) : void
      {
         super.readFromLua(param1);
         if(§<!7§ == 0 && §^!0§ == 0)
         {
            §<!7§ = 20;
         }
      }
      
      override public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = super.getAsSerializableObject();
         _loc1_.optimalPowerup = this.optimalPowerup;
         return _loc1_;
      }
      
      override protected function convertName(param1:String) : String
      {
         return §,K§(param1);
      }
      
      override protected function shouldIgnoreObject(param1:Object) : Boolean
      {
         return false;
      }
      
      public function §0##§(param1:String) : Boolean
      {
         var _loc2_:Number = 0;
         while(_loc2_ < §4$8§.length)
         {
            if(§4$8§[_loc2_].type == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
   }
}

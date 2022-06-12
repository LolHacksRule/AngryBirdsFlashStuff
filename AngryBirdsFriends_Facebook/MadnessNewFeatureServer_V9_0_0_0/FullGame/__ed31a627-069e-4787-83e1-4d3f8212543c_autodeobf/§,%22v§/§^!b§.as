package §,"v§
{
   public class §^!b§ extends §[!I§
   {
      
      protected static var §-!g§:Object = {};
      
      {
         §&v§();
      }
      
      protected var §^c§:String = "";
      
      public function §^!b§()
      {
         super();
      }
      
      public static function §>"=§(param1:String) : §^!b§
      {
         var _loc2_:§^!b§ = new §^!b§();
         _loc2_.readFromLua(param1);
         return _loc2_;
      }
      
      public static function §<%§(param1:String) : §^!b§
      {
         var _loc2_:§^!b§ = new §^!b§();
         _loc2_.readDataFromJSON(param1);
         return _loc2_;
      }
      
      public static function §2X§(param1:String) : String
      {
         return §-!g§[param1] || param1;
      }
      
      protected static function §&v§() : void
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
         return this.§^c§;
      }
      
      public function set optimalPowerup(param1:String) : void
      {
         this.§^c§ = param1;
      }
      
      override public function readDataFromJSON(param1:String) : void
      {
         super.readDataFromJSON(param1);
         var _loc2_:Object = JSON.parse(param1);
         if(_loc2_.worldGravity)
         {
            §?!x§ = _loc2_.worldGravity;
         }
         else if(§?!x§ == 0)
         {
            §?!x§ = 20;
         }
         if(§##B§ == 0)
         {
            §4G§ = true;
         }
         if(isNaN(§4#o§) && isNaN(§]!2§))
         {
            if(mBirds && mBirds.length > 0)
            {
               §4#o§ = mBirds[0].x;
               §]!2§ = mBirds[0].y - 8.5;
            }
         }
         var _loc3_:Number = 0;
         while(_loc3_ < §,N§.length)
         {
            §,N§[_loc3_].angle = §,N§[_loc3_].angle;
            _loc3_++;
         }
         this.§^c§ = "";
         if(_loc2_.optimalPowerup)
         {
            this.§^c§ = _loc2_.optimalPowerup;
         }
         if(_loc2_.borderTop)
         {
            §,#y§ = _loc2_.borderTop;
         }
         else
         {
            §,#y§ = 0;
         }
         if(_loc2_.borderGround)
         {
            §6!o§ = _loc2_.borderGround;
         }
         else
         {
            §6!o§ = 0;
         }
         if(_loc2_.borderLeft)
         {
            § z§ = _loc2_.borderLeft;
         }
         else
         {
            § z§ = 0;
         }
         if(_loc2_.borderRight)
         {
            §3$?§ = _loc2_.borderRight;
         }
         else
         {
            §3$?§ = 0;
         }
      }
      
      override protected function readFromLua(param1:String) : void
      {
         super.readFromLua(param1);
         if(§?!x§ == 0 && §##B§ == 0)
         {
            §?!x§ = 20;
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
         return §2X§(param1);
      }
      
      override protected function shouldIgnoreObject(param1:Object) : Boolean
      {
         return false;
      }
      
      public function §?Q§(param1:String) : Boolean
      {
         var _loc2_:Number = 0;
         while(_loc2_ < §,N§.length)
         {
            if(§,N§[_loc2_].type == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
   }
}

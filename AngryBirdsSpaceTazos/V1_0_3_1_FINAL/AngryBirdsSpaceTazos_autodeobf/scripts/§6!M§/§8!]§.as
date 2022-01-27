package §6!M§
{
   import §'!n§.§@B§;
   import §;`§.b2Body;
   
   public class §8!]§
   {
      
      public static const §16§:int = b2Body.b2_staticBody;
      
      public static const §4K§:int = b2Body.b2_kinematicBody;
      
      public static const §0!Q§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §@!§:int;
      
      protected var §0_§:Number;
      
      protected var §]!$§:Number;
      
      protected var §?>§:Number;
      
      protected var §;S§:Number;
      
      protected var §-!§:Number;
      
      protected var §0!6§:Number;
      
      protected var §^!6§:§@B§;
      
      protected var §7!3§:§@B§;
      
      public function §8!]§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§@!§ = param2;
         this.§0_§ = param3;
         this.§]!$§ = param4;
         this.§?>§ = param5;
         this.§;S§ = param6;
         this.§-!§ = param7;
         this.§0!6§ = param8;
      }
      
      public static function §8!u§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §4K§;
            case "static":
               return §16§;
            case "dynamic":
               return §0!Q§;
            default:
               throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get bodyType() : int
      {
         return this.§@!§;
      }
      
      public function get density() : Number
      {
         return this.§0_§;
      }
      
      public function get friction() : Number
      {
         return this.§]!$§;
      }
      
      public function get restitution() : Number
      {
         return this.§?>§;
      }
      
      public function get strength() : Number
      {
         return this.§;S§;
      }
      
      public function get defence() : Number
      {
         return this.§-!§;
      }
      
      public function get colors() : Number
      {
         return this.§0!6§;
      }
      
      public function §>L§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§^!6§)
         {
            return;
         }
         this.§^!6§ = new §@B§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§,!§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §,!§(param1:String, param2:Number) : void
      {
         if(this.§^!6§ == null)
         {
            this.§^!6§ = new §@B§();
         }
         param1 = param1.toUpperCase();
         if(this.§^!6§[param1] == null)
         {
            this.§^!6§[param1] = param2;
         }
      }
      
      public function §<"9§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§7!3§)
         {
            return;
         }
         this.§7!3§ = new §@B§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§6!P§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §6!P§(param1:String, param2:Number) : void
      {
         if(this.§7!3§ == null)
         {
            this.§7!3§ = new §@B§();
         }
         param1 = param1.toUpperCase();
         if(this.§7!3§[param1] == null)
         {
            this.§7!3§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§^!6§ && this.§^!6§[param1])
         {
            return this.§^!6§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§7!3§ && this.§7!3§[param1])
         {
            return this.§7!3§[param1];
         }
         return 1;
      }
      
      public function §"!2§() : Boolean
      {
         return this.§@!§ == §8!]§.§16§;
      }
   }
}

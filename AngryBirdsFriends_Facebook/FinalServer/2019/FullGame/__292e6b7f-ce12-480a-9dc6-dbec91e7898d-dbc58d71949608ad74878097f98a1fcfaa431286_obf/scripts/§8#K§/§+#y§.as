package §8#K§
{
   import §#"4§.§&r§;
   import §'#K§.b2Body;
   
   public class §+#y§
   {
      
      public static const BODY_TYPE_STATIC:int = b2Body.b2_staticBody;
      
      public static const §0j§:int = b2Body.b2_kinematicBody;
      
      public static const §#"%§:int = b2Body.b2_dynamicBody;
       
      
      protected var §&$"§:String;
      
      protected var §"$ §:int;
      
      protected var §7$?§:Number;
      
      protected var §^7§:Number;
      
      protected var §!!=§:Number;
      
      protected var §"#v§:Number;
      
      protected var §0#6§:Number;
      
      protected var §2f§:Number;
      
      protected var §3!g§:§&r§;
      
      protected var §&#p§:§&r§;
      
      protected var §;$7§:String;
      
      public function §+#y§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:String = null)
      {
         super();
         this.§&$"§ = param1.toUpperCase();
         this.§"$ § = param2;
         this.§7$?§ = param3;
         this.§^7§ = param4;
         this.§!!=§ = param5;
         this.§"#v§ = param6;
         this.§0#6§ = param7;
         this.§2f§ = param8;
         this.§;$7§ = param9;
      }
      
      public static function §<#4§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §0j§;
            case "static":
               return BODY_TYPE_STATIC;
            case "dynamic":
               return §#"%§;
            default:
               throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
         }
      }
      
      public function get name() : String
      {
         return this.§&$"§;
      }
      
      public function get bodyType() : int
      {
         return this.§"$ §;
      }
      
      public function get density() : Number
      {
         return this.§7$?§;
      }
      
      public function get friction() : Number
      {
         return this.§^7§;
      }
      
      public function get restitution() : Number
      {
         return this.§!!=§;
      }
      
      public function get strength() : Number
      {
         return this.§"#v§;
      }
      
      public function get defence() : Number
      {
         return this.§0#6§;
      }
      
      public function get colors() : Number
      {
         return this.§2f§;
      }
      
      public function get sounds() : String
      {
         return this.§;$7§;
      }
      
      public function §<<§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§3!g§)
         {
            return;
         }
         this.§3!g§ = new §&r§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§class§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §class§(param1:String, param2:Number) : void
      {
         if(this.§3!g§ == null)
         {
            this.§3!g§ = new §&r§();
         }
         param1 = param1.toUpperCase();
         if(this.§3!g§[param1] == null)
         {
            this.§3!g§[param1] = param2;
         }
      }
      
      public function §0#0§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§&#p§)
         {
            return;
         }
         this.§&#p§ = new §&r§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§^!'§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §^!'§(param1:String, param2:Number) : void
      {
         if(this.§&#p§ == null)
         {
            this.§&#p§ = new §&r§();
         }
         param1 = param1.toUpperCase();
         if(this.§&#p§[param1] == null)
         {
            this.§&#p§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§3!g§ && this.§3!g§[param1])
         {
            return this.§3!g§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§&#p§ && this.§&#p§[param1])
         {
            return this.§&#p§[param1];
         }
         return 1;
      }
      
      public function §+",§() : Boolean
      {
         return this.§"$ § == §+#y§.BODY_TYPE_STATIC;
      }
   }
}

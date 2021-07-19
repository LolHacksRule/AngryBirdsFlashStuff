package §=# §
{
   import §2]§.§5"z§;
   
   public class §6!@§ extends §5"z§
   {
       
      
      private var §^!4§:String;
      
      private var §&#O§:String;
      
      private var §@#>§:Object;
      
      private var §'!H§:Array;
      
      private var §!"i§:Number = 0;
      
      private var §#_§:Number = 0;
      
      public function §6!@§(param1:String, param2:String, param3:String, param4:Object, param5:Object, param6:Object)
      {
         super(param1);
         this.§^!4§ = param2;
         this.§&#O§ = param3;
         this.§@#>§ = param4;
         if(param5 is Array)
         {
            this.§'!H§ = this.§7#W§(param5);
         }
         else if(param5)
         {
            this.§'!H§ = [String(param5)];
         }
         if(param6)
         {
            this.§!"i§ = param6.min;
            this.§#_§ = param6.max;
         }
      }
      
      public static function §+#y§(param1:String, param2:*) : §6!@§
      {
         return new §6!@§(param1,param2.targetBlock,param2.sound,param2.explosion,param2.particles,param2.delay);
      }
      
      private function §7#W§(param1:*) : Array
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(param1 is String)
         {
            return [param1];
         }
         if(param1 is Array)
         {
            return param1;
         }
         if(param1 is Object)
         {
            _loc2_ = [];
            for each(_loc3_ in param1)
            {
               _loc2_.push(_loc3_);
            }
            return _loc2_;
         }
         return [];
      }
      
      public function get §7U§() : String
      {
         return this.§^!4§;
      }
      
      public function get soundName() : String
      {
         return this.§&#O§;
      }
      
      public function get §3"2§() : Boolean
      {
         return this.§@#>§ != null;
      }
      
      public function get §6"G§() : Number
      {
         return !!this.§@#>§ ? Number(this.§@#>§.force) : Number(0);
      }
      
      public function get §+q§() : Number
      {
         return !!this.§@#>§ ? Number(this.§@#>§.radius) : Number(0);
      }
      
      public function get explosionDamage() : Number
      {
         return !!this.§@#>§ ? Number(this.§@#>§.damage) : Number(0);
      }
      
      public function get explosionDamageRadius() : Number
      {
         return !!this.§@#>§ ? Number(this.§@#>§.damageRadius) : Number(0);
      }
      
      public function get §4N§() : int
      {
         if(this.§'!H§)
         {
            return this.§'!H§.length;
         }
         return 0;
      }
      
      public function §#z§(param1:int) : String
      {
         if(this.§'!H§)
         {
            return this.§'!H§[param1];
         }
         return null;
      }
      
      public function get §^&§() : Number
      {
         return this.§!"i§;
      }
      
      public function get §@"q§() : Number
      {
         return this.§#_§;
      }
   }
}

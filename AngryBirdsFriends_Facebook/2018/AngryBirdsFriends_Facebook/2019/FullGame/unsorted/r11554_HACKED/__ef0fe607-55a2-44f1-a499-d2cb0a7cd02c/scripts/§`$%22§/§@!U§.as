package §`$"§
{
   import §1C§.§,"L§;
   
   public class §@!U§ extends §,"L§
   {
       
      
      private var §3#9§:String;
      
      private var §!#J§:String;
      
      private var §6"2§:Object;
      
      private var §%k§:Array;
      
      private var §^!H§:Number = 0;
      
      private var §@!b§:Number = 0;
      
      public function §@!U§(param1:String, param2:String, param3:String, param4:Object, param5:Object, param6:Object)
      {
         super(param1);
         this.§3#9§ = param2;
         this.§!#J§ = param3;
         this.§6"2§ = param4;
         if(param5 is Array)
         {
            this.§%k§ = this.§ "o§(param5);
         }
         else if(param5)
         {
            this.§%k§ = [String(param5)];
         }
         if(param6)
         {
            this.§^!H§ = param6.min;
            this.§@!b§ = param6.max;
         }
      }
      
      public static function §<!3§(param1:String, param2:*) : §@!U§
      {
         return new §@!U§(param1,param2.targetBlock,param2.sound,param2.explosion,param2.particles,param2.delay);
      }
      
      private function § "o§(param1:*) : Array
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
      
      public function get §[A§() : String
      {
         return this.§3#9§;
      }
      
      public function get soundName() : String
      {
         return this.§!#J§;
      }
      
      public function get §8"Z§() : Boolean
      {
         return this.§6"2§ != null;
      }
      
      public function get §1"z§() : Number
      {
         return !!this.§6"2§ ? Number(this.§6"2§.force) : Number(0);
      }
      
      public function get §^#=§() : Number
      {
         return !!this.§6"2§ ? Number(this.§6"2§.radius) : Number(0);
      }
      
      public function get explosionDamage() : Number
      {
         return !!this.§6"2§ ? Number(this.§6"2§.damage) : Number(0);
      }
      
      public function get explosionDamageRadius() : Number
      {
         return !!this.§6"2§ ? Number(this.§6"2§.damageRadius) : Number(0);
      }
      
      public function get §2"=§() : int
      {
         if(this.§%k§)
         {
            return this.§%k§.length;
         }
         return 0;
      }
      
      public function §0k§(param1:int) : String
      {
         if(this.§%k§)
         {
            return this.§%k§[param1];
         }
         return null;
      }
      
      public function get §3!c§() : Number
      {
         return this.§^!H§;
      }
      
      public function get §?#u§() : Number
      {
         return this.§@!b§;
      }
   }
}

package §]h§
{
   import §@"J§.§ 2§;
   
   public class §^;§ extends § 2§
   {
       
      
      private var §!!0§:String;
      
      private var §#!7§:String;
      
      private var §`"h§:Object;
      
      private var §+"d§:Array;
      
      private var §!V§:Number = 0;
      
      private var §0d§:Number = 0;
      
      public function §^;§(param1:String, param2:String, param3:String, param4:Object, param5:Object, param6:Object)
      {
         super(param1);
         this.§!!0§ = param2;
         this.§#!7§ = param3;
         this.§`"h§ = param4;
         if(param5 is Array)
         {
            this.§+"d§ = this.§#"X§(param5);
         }
         else if(param5)
         {
            this.§+"d§ = [String(param5)];
         }
         if(param6)
         {
            this.§!V§ = param6.min;
            this.§0d§ = param6.max;
         }
      }
      
      public static function §?" §(param1:String, param2:*) : §^;§
      {
         return new §^;§(param1,param2.targetBlock,param2.sound,param2.explosion,param2.particles,param2.delay);
      }
      
      private function §#"X§(param1:*) : Array
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
      
      public function get §%$1§() : String
      {
         return this.§!!0§;
      }
      
      public function get soundName() : String
      {
         return this.§#!7§;
      }
      
      public function get §+j§() : Boolean
      {
         return this.§`"h§ != null;
      }
      
      public function get §-b§() : Number
      {
         return !!this.§`"h§ ? Number(this.§`"h§.force) : Number(0);
      }
      
      public function get §?!]§() : Number
      {
         return !!this.§`"h§ ? Number(this.§`"h§.radius) : Number(0);
      }
      
      public function get explosionDamage() : Number
      {
         return !!this.§`"h§ ? Number(this.§`"h§.damage) : Number(0);
      }
      
      public function get explosionDamageRadius() : Number
      {
         return !!this.§`"h§ ? Number(this.§`"h§.damageRadius) : Number(0);
      }
      
      public function get §^!y§() : int
      {
         if(this.§+"d§)
         {
            return this.§+"d§.length;
         }
         return 0;
      }
      
      public function §,#o§(param1:int) : String
      {
         if(this.§+"d§)
         {
            return this.§+"d§[param1];
         }
         return null;
      }
      
      public function get §2!B§() : Number
      {
         return this.§!V§;
      }
      
      public function get §[$§() : Number
      {
         return this.§0d§;
      }
   }
}

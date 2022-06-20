package §-"Y§
{
   import §%"v§.§!" §;
   
   public class §+t§ extends §!" §
   {
       
      
      private var §8G§:String;
      
      private var §5!U§:String;
      
      private var §>#b§:Object;
      
      private var §+$0§:Array;
      
      private var §4$>§:Number = 0;
      
      private var §0![§:Number = 0;
      
      public function §+t§(param1:String, param2:String, param3:String, param4:Object, param5:Object, param6:Object)
      {
         super(param1);
         this.§8G§ = param2;
         this.§5!U§ = param3;
         this.§>#b§ = param4;
         if(param5 is Array)
         {
            this.§+$0§ = this.§`T§(param5);
         }
         else if(param5)
         {
            this.§+$0§ = [String(param5)];
         }
         if(param6)
         {
            this.§4$>§ = param6.min;
            this.§0![§ = param6.max;
         }
      }
      
      public static function §%j§(param1:String, param2:*) : §+t§
      {
         return new §+t§(param1,param2.targetBlock,param2.sound,param2.explosion,param2.particles,param2.delay);
      }
      
      private function §`T§(param1:*) : Array
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
      
      public function get §+"1§() : String
      {
         return this.§8G§;
      }
      
      public function get soundName() : String
      {
         return this.§5!U§;
      }
      
      public function get §+§() : Boolean
      {
         return this.§>#b§ != null;
      }
      
      public function get §[#q§() : Number
      {
         return !!this.§>#b§ ? Number(this.§>#b§.force) : Number(0);
      }
      
      public function get §]$%§() : Number
      {
         return !!this.§>#b§ ? Number(this.§>#b§.radius) : Number(0);
      }
      
      public function get explosionDamage() : Number
      {
         return !!this.§>#b§ ? Number(this.§>#b§.damage) : Number(0);
      }
      
      public function get explosionDamageRadius() : Number
      {
         return !!this.§>#b§ ? Number(this.§>#b§.damageRadius) : Number(0);
      }
      
      public function get §2&§() : int
      {
         if(this.§+$0§)
         {
            return this.§+$0§.length;
         }
         return 0;
      }
      
      public function §%X§(param1:int) : String
      {
         if(this.§+$0§)
         {
            return this.§+$0§[param1];
         }
         return null;
      }
      
      public function get §?#j§() : Number
      {
         return this.§4$>§;
      }
      
      public function get §;$1§() : Number
      {
         return this.§0![§;
      }
   }
}

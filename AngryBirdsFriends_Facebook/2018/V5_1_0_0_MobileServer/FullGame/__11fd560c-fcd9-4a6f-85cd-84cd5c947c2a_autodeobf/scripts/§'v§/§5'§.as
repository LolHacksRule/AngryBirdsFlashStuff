package §'v§
{
   import §3$"§.§4t§;
   
   public class §5'§ extends §4t§
   {
       
      
      private var §>$;§:String;
      
      private var §!W§:String;
      
      private var §""G§:Object;
      
      private var §!!%§:Array;
      
      private var §5#U§:Number = 0;
      
      private var §#N§:Number = 0;
      
      public function §5'§(param1:String, param2:String, param3:String, param4:Object, param5:Object, param6:Object)
      {
         super(param1);
         this.§>$;§ = param2;
         this.§!W§ = param3;
         this.§""G§ = param4;
         if(param5 is Array)
         {
            this.§!!%§ = this.§,!g§(param5);
         }
         else if(param5)
         {
            this.§!!%§ = [String(param5)];
         }
         if(param6)
         {
            this.§5#U§ = param6.min;
            this.§#N§ = param6.max;
         }
      }
      
      public static function §8"s§(param1:String, param2:*) : §5'§
      {
         return new §5'§(param1,param2.targetBlock,param2.sound,param2.explosion,param2.particles,param2.delay);
      }
      
      private function §,!g§(param1:*) : Array
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
      
      public function get §9S§() : String
      {
         return this.§>$;§;
      }
      
      public function get soundName() : String
      {
         return this.§!W§;
      }
      
      public function get §5"L§() : Boolean
      {
         return this.§""G§ != null;
      }
      
      public function get §,#@§() : Number
      {
         return !!this.§""G§ ? Number(this.§""G§.force) : Number(0);
      }
      
      public function get §4"E§() : Number
      {
         return !!this.§""G§ ? Number(this.§""G§.radius) : Number(0);
      }
      
      public function get explosionDamage() : Number
      {
         return !!this.§""G§ ? Number(this.§""G§.damage) : Number(0);
      }
      
      public function get explosionDamageRadius() : Number
      {
         return !!this.§""G§ ? Number(this.§""G§.damageRadius) : Number(0);
      }
      
      public function get §%!§() : int
      {
         if(this.§!!%§)
         {
            return this.§!!%§.length;
         }
         return 0;
      }
      
      public function §@!q§(param1:int) : String
      {
         if(this.§!!%§)
         {
            return this.§!!%§[param1];
         }
         return null;
      }
      
      public function get §8"I§() : Number
      {
         return this.§5#U§;
      }
      
      public function get §9!V§() : Number
      {
         return this.§#N§;
      }
   }
}

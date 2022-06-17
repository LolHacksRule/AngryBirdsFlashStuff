package §1#=§
{
   import § #>§.§3b§;
   
   public class §@&§ extends §3b§
   {
       
      
      private var §'#v§:String;
      
      private var § " §:String;
      
      private var §4D§:Object;
      
      private var §7$!§:Array;
      
      private var §8]§:Number = 0;
      
      private var §@#7§:Number = 0;
      
      public function §@&§(param1:String, param2:String, param3:String, param4:Object, param5:Object, param6:Object)
      {
         super(param1);
         this.§'#v§ = param2;
         this.§ " § = param3;
         this.§4D§ = param4;
         if(param5 is Array)
         {
            this.§7$!§ = this.§=$$§(param5);
         }
         else if(param5)
         {
            this.§7$!§ = [String(param5)];
         }
         if(param6)
         {
            this.§8]§ = param6.min;
            this.§@#7§ = param6.max;
         }
      }
      
      public static function § "g§(param1:String, param2:*) : §@&§
      {
         return new §@&§(param1,param2.targetBlock,param2.sound,param2.explosion,param2.particles,param2.delay);
      }
      
      private function §=$$§(param1:*) : Array
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
      
      public function get §`#a§() : String
      {
         return this.§'#v§;
      }
      
      public function get soundName() : String
      {
         return this.§ " §;
      }
      
      public function get §[#g§() : Boolean
      {
         return this.§4D§ != null;
      }
      
      public function get §#$=§() : Number
      {
         return !!this.§4D§ ? Number(this.§4D§.force) : Number(0);
      }
      
      public function get §%$9§() : Number
      {
         return !!this.§4D§ ? Number(this.§4D§.radius) : Number(0);
      }
      
      public function get explosionDamage() : Number
      {
         return !!this.§4D§ ? Number(this.§4D§.damage) : Number(0);
      }
      
      public function get explosionDamageRadius() : Number
      {
         return !!this.§4D§ ? Number(this.§4D§.damageRadius) : Number(0);
      }
      
      public function get §3_§() : int
      {
         if(this.§7$!§)
         {
            return this.§7$!§.length;
         }
         return 0;
      }
      
      public function §0!=§(param1:int) : String
      {
         if(this.§7$!§)
         {
            return this.§7$!§[param1];
         }
         return null;
      }
      
      public function get §31§() : Number
      {
         return this.§8]§;
      }
      
      public function get §<#t§() : Number
      {
         return this.§@#7§;
      }
   }
}

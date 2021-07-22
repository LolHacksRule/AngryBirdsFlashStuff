package §7!N§
{
   import §^"Z§.§2"l§;
   
   public class §+c§ extends §2"l§
   {
       
      
      private var §0x§:String;
      
      private var §;! §:String;
      
      private var §<$&§:Object;
      
      private var §&"F§:Array;
      
      private var §-#1§:Number = 0;
      
      private var §4!K§:Number = 0;
      
      public function §+c§(param1:String, param2:String, param3:String, param4:Object, param5:Object, param6:Object)
      {
         super(param1);
         this.§0x§ = param2;
         this.§;! § = param3;
         this.§<$&§ = param4;
         if(param5 is Array)
         {
            this.§&"F§ = this.§ !c§(param5);
         }
         else if(param5)
         {
            this.§&"F§ = [String(param5)];
         }
         if(param6)
         {
            this.§-#1§ = param6.min;
            this.§4!K§ = param6.max;
         }
      }
      
      public static function §%$2§(param1:String, param2:*) : §+c§
      {
         return new §+c§(param1,param2.targetBlock,param2.sound,param2.explosion,param2.particles,param2.delay);
      }
      
      private function § !c§(param1:*) : Array
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
      
      public function get §]J§() : String
      {
         return this.§0x§;
      }
      
      public function get soundName() : String
      {
         return this.§;! §;
      }
      
      public function get §;!x§() : Boolean
      {
         return this.§<$&§ != null;
      }
      
      public function get §6#R§() : Number
      {
         return !!this.§<$&§ ? Number(this.§<$&§.force) : Number(0);
      }
      
      public function get §#d§() : Number
      {
         return !!this.§<$&§ ? Number(this.§<$&§.radius) : Number(0);
      }
      
      public function get explosionDamage() : Number
      {
         return !!this.§<$&§ ? Number(this.§<$&§.damage) : Number(0);
      }
      
      public function get explosionDamageRadius() : Number
      {
         return !!this.§<$&§ ? Number(this.§<$&§.damageRadius) : Number(0);
      }
      
      public function get §=#6§() : int
      {
         if(this.§&"F§)
         {
            return this.§&"F§.length;
         }
         return 0;
      }
      
      public function §=#e§(param1:int) : String
      {
         if(this.§&"F§)
         {
            return this.§&"F§[param1];
         }
         return null;
      }
      
      public function get §#$'§() : Number
      {
         return this.§-#1§;
      }
      
      public function get §>$-§() : Number
      {
         return this.§4!K§;
      }
   }
}

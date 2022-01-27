package §+"f§
{
   public class §[_§
   {
      
      public static const §+!3§:String = "GROUND_HILLS";
       
      
      protected var §[7§:String;
      
      protected var §7"Z§:String;
      
      protected var §5!1§:int;
      
      protected var §&?§:int;
      
      protected var §5A§:Vector.<§!r§>;
      
      protected var §;"5§:String;
      
      protected var § "B§:String;
      
      public function §[_§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§[7§ = param1;
         this.§5A§ = new Vector.<§!r§>();
         this.§5!1§ = param2;
         this.§&?§ = param3;
         this.§;"5§ = param4;
         this.§7"Z§ = param5;
         this.§ "B§ = param6;
      }
      
      public function get id() : String
      {
         return this.§[7§;
      }
      
      public function get §4!B§() : String
      {
         return this.§;"5§;
      }
      
      public function get §[!&§() : int
      {
         return this.§5!1§;
      }
      
      public function get colorGround() : int
      {
         return this.§&?§;
      }
      
      public function get §;!F§() : String
      {
         return this.§7"Z§;
      }
      
      public function get §1!@§() : String
      {
         return this.§ "B§;
      }
      
      public function get § U§() : int
      {
         return this.§5A§.length;
      }
      
      public function §?j§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§!r§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.§;!f§(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§#!1§(_loc2_.§`!Z§);
         }
         this.§5A§.reverse();
      }
      
      public function §;!f§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §!r§
      {
         var _loc11_:§!r§ = new §!r§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§5A§.push(_loc11_);
         return _loc11_;
      }
      
      public function §^M§(param1:int) : §!r§
      {
         return this.§5A§[param1];
      }
   }
}

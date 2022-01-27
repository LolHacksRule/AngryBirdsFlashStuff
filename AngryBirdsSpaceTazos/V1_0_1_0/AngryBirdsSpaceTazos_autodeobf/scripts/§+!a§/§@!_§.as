package §+!a§
{
   public class §@!_§
   {
      
      public static const §!z§:String = "GROUND_HILLS";
       
      
      protected var §[!o§:String;
      
      protected var §^!F§:String;
      
      protected var §?"+§:int;
      
      protected var §1c§:int;
      
      protected var §<M§:Vector.<§2!a§>;
      
      protected var §&!0§:String;
      
      protected var §98§:String;
      
      public function §@!_§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§[!o§ = param1;
         this.§<M§ = new Vector.<§2!a§>();
         this.§?"+§ = param2;
         this.§1c§ = param3;
         this.§&!0§ = param4;
         this.§^!F§ = param5;
         this.§98§ = param6;
      }
      
      public function get id() : String
      {
         return this.§[!o§;
      }
      
      public function get §break§() : String
      {
         return this.§&!0§;
      }
      
      public function get §9!h§() : int
      {
         return this.§?"+§;
      }
      
      public function get colorGround() : int
      {
         return this.§1c§;
      }
      
      public function get §=t§() : String
      {
         return this.§^!F§;
      }
      
      public function get §[!$§() : int
      {
         return this.§<M§.length;
      }
      
      public function §@!o§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§2!a§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§>!]§(_loc2_.§3!;§);
         }
         this.§<M§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §2!a§
      {
         var _loc11_:§2!a§ = new §2!a§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§<M§.push(_loc11_);
         return _loc11_;
      }
      
      public function §0'§(param1:int) : §2!a§
      {
         return this.§<M§[param1];
      }
   }
}

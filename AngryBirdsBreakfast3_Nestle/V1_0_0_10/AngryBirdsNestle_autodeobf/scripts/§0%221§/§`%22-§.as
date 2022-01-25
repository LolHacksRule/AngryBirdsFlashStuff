package §0"1§
{
   public class §`"-§
   {
      
      public static const §?!@§:String = "GROUND_HILLS";
       
      
      protected var §?!j§:String;
      
      protected var §4!W§:String;
      
      protected var §"v§:int;
      
      protected var §-"3§:int;
      
      protected var §<a§:Vector.<§set §>;
      
      protected var §^!O§:String;
      
      protected var §%>§:String;
      
      public function §`"-§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§?!j§ = param1;
         this.§<a§ = new Vector.<§set §>();
         this.§"v§ = param2;
         this.§-"3§ = param3;
         this.§^!O§ = param4;
         this.§4!W§ = param5;
         this.§%>§ = param6;
      }
      
      public function get id() : String
      {
         return this.§?!j§;
      }
      
      public function get §]!i§() : String
      {
         return this.§^!O§;
      }
      
      public function get §@9§() : int
      {
         return this.§"v§;
      }
      
      public function get §0!q§() : int
      {
         return this.§-"3§;
      }
      
      public function get §?!E§() : String
      {
         return this.§4!W§;
      }
      
      public function get §9!W§() : String
      {
         return this.§%>§;
      }
      
      public function get §?!<§() : int
      {
         return this.§<a§.length;
      }
      
      public function §3Q§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§set § = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§[>§(_loc2_.§4!y§);
         }
         this.§<a§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §set §
      {
         var _loc11_:§set § = new §set §(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§<a§.push(_loc11_);
         return _loc11_;
      }
      
      public function §]!C§(param1:int) : §set §
      {
         return this.§<a§[param1];
      }
   }
}

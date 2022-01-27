package §;"0§
{
   public class §@$§
   {
      
      public static const §`! §:String = "GROUND_HILLS";
       
      
      protected var §""§:String;
      
      protected var §^#§:String;
      
      protected var §6_§:int;
      
      protected var §`!p§:int;
      
      protected var §0"-§:Vector.<§="4§>;
      
      protected var §0!5§:String;
      
      protected var §9!;§:String;
      
      public function §@$§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§""§ = param1;
         this.§0"-§ = new Vector.<§="4§>();
         this.§6_§ = param2;
         this.§`!p§ = param3;
         this.§0!5§ = param4;
         this.§^#§ = param5;
         this.§9!;§ = param6;
      }
      
      public function get id() : String
      {
         return this.§""§;
      }
      
      public function get §8"&§() : String
      {
         return this.§0!5§;
      }
      
      public function get §23§() : int
      {
         return this.§6_§;
      }
      
      public function get colorGround() : int
      {
         return this.§`!p§;
      }
      
      public function get §2!5§() : String
      {
         return this.§^#§;
      }
      
      public function get §&C§() : int
      {
         return this.§0"-§.length;
      }
      
      public function §?!'§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§="4§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§<F§(_loc2_.§+!E§);
         }
         this.§0"-§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §="4§
      {
         var _loc11_:§="4§ = new §="4§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§0"-§.push(_loc11_);
         return _loc11_;
      }
      
      public function §&m§(param1:int) : §="4§
      {
         return this.§0"-§[param1];
      }
   }
}

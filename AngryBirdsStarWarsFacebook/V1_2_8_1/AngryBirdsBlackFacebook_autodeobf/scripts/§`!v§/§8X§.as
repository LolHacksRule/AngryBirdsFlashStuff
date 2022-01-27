package §`!v§
{
   public class §8X§
   {
      
      public static const § W§:String = "GROUND_HILLS";
       
      
      protected var §]!R§:String;
      
      protected var §%!+§:String;
      
      protected var §>!W§:int;
      
      protected var §0!l§:int;
      
      protected var §!#7§:Vector.<§;!d§>;
      
      protected var §"!!§:String;
      
      protected var §+"n§:String;
      
      public function §8X§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§]!R§ = param1;
         this.§!#7§ = new Vector.<§;!d§>();
         this.§>!W§ = param2;
         this.§0!l§ = param3;
         this.§"!!§ = param4;
         this.§%!+§ = param5;
         this.§+"n§ = param6;
      }
      
      public function get id() : String
      {
         return this.§]!R§;
      }
      
      public function get §7"W§() : String
      {
         return this.§"!!§;
      }
      
      public function get §;!7§() : int
      {
         return this.§>!W§;
      }
      
      public function get colorGround() : int
      {
         return this.§0!l§;
      }
      
      public function get §>"G§() : String
      {
         return this.§%!+§;
      }
      
      public function get §<!5§() : String
      {
         return this.§+"n§;
      }
      
      public function get §#!E§() : int
      {
         return this.§!#7§.length;
      }
      
      public function §6f§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§;!d§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.§@"V§(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§?!z§(_loc2_.§9"w§);
         }
         this.§!#7§.reverse();
      }
      
      public function §@"V§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §;!d§
      {
         var _loc11_:§;!d§ = new §;!d§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§!#7§.push(_loc11_);
         return _loc11_;
      }
      
      public function §]!E§(param1:int) : §;!d§
      {
         return this.§!#7§[param1];
      }
   }
}

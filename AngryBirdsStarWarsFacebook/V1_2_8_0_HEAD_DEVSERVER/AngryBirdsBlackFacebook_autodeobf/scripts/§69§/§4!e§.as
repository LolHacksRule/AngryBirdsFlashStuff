package §69§
{
   public class §4!e§
   {
      
      public static const §0!K§:String = "GROUND_HILLS";
       
      
      protected var §6##§:String;
      
      protected var §3!C§:String;
      
      protected var §4"D§:int;
      
      protected var §8!<§:int;
      
      protected var §!#T§:Vector.<§>!b§>;
      
      protected var §=S§:String;
      
      protected var §>"s§:String;
      
      public function §4!e§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§6##§ = param1;
         this.§!#T§ = new Vector.<§>!b§>();
         this.§4"D§ = param2;
         this.§8!<§ = param3;
         this.§=S§ = param4;
         this.§3!C§ = param5;
         this.§>"s§ = param6;
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function get §0;§() : String
      {
         return this.§=S§;
      }
      
      public function get §9" §() : int
      {
         return this.§4"D§;
      }
      
      public function get colorGround() : int
      {
         return this.§8!<§;
      }
      
      public function get § #T§() : String
      {
         return this.§3!C§;
      }
      
      public function get §@#W§() : String
      {
         return this.§>"s§;
      }
      
      public function get §[#_§() : int
      {
         return this.§!#T§.length;
      }
      
      public function §<3§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§>!b§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.§5!a§(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§+#R§(_loc2_.§`"-§);
         }
         this.§!#T§.reverse();
      }
      
      public function §5!a§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §>!b§
      {
         var _loc11_:§>!b§ = new §>!b§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§!#T§.push(_loc11_);
         return _loc11_;
      }
      
      public function §+!x§(param1:int) : §>!b§
      {
         return this.§!#T§[param1];
      }
   }
}

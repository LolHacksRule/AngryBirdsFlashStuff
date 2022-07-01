package §+c§
{
   public class §;L§
   {
      
      public static const §%!4§:String = "GROUND_HILLS";
       
      
      protected var §]!U§:String;
      
      protected var §"!i§:String;
      
      protected var §&8§:int;
      
      protected var §4v§:int;
      
      protected var §[!J§:Vector.<§6y§>;
      
      protected var §&" §:String;
      
      protected var §&!H§:String;
      
      public function §;L§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§]!U§ = param1;
         this.§[!J§ = new Vector.<§6y§>();
         this.§&8§ = param2;
         this.§4v§ = param3;
         this.§&" § = param4;
         this.§"!i§ = param5;
         this.§&!H§ = param6;
      }
      
      public function get id() : String
      {
         return this.§]!U§;
      }
      
      public function get §+!C§() : String
      {
         return this.§&" §;
      }
      
      public function get §9x§() : int
      {
         return this.§&8§;
      }
      
      public function get §5]§() : int
      {
         return this.§4v§;
      }
      
      public function get §[W§() : String
      {
         return this.§"!i§;
      }
      
      public function get § !5§() : int
      {
         return this.§[!J§.length;
      }
      
      public function §<!1§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§6y§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§8u§(_loc2_.§9D§);
         }
         this.§[!J§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §6y§
      {
         var _loc11_:§6y§ = new §6y§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§[!J§.push(_loc11_);
         return _loc11_;
      }
      
      public function §[&§(param1:int) : §6y§
      {
         return this.§[!J§[param1];
      }
   }
}

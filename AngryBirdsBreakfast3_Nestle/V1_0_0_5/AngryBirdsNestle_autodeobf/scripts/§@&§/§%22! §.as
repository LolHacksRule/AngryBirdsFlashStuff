package §@&§
{
   public class §"! §
   {
      
      public static const §;f§:String = "GROUND_HILLS";
       
      
      protected var §,p§:String;
      
      protected var §74§:String;
      
      protected var §]!,§:int;
      
      protected var §>!v§:int;
      
      protected var §<G§:Vector.<§%T§>;
      
      protected var §>Y§:String;
      
      protected var §5!j§:String;
      
      public function §"! §(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         super();
         this.§,p§ = param1;
         this.§<G§ = new Vector.<§%T§>();
         this.§]!,§ = param2;
         this.§>!v§ = param3;
         this.§>Y§ = param4;
         this.§74§ = param5;
         this.§5!j§ = param6;
      }
      
      public function get id() : String
      {
         return this.§,p§;
      }
      
      public function get §>a§() : String
      {
         return this.§>Y§;
      }
      
      public function get §4!2§() : int
      {
         return this.§]!,§;
      }
      
      public function get §^!L§() : int
      {
         return this.§>!v§;
      }
      
      public function get §^v§() : String
      {
         return this.§74§;
      }
      
      public function get §&!E§() : int
      {
         return this.§<G§.length;
      }
      
      public function §>!q§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§%T§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.addLayer(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            _loc3_.§7!=§(_loc2_.§9!J§);
         }
         this.§<G§.reverse();
      }
      
      public function addLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : §%T§
      {
         var _loc11_:§%T§ = new §%T§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§<G§.push(_loc11_);
         return _loc11_;
      }
      
      public function §'G§(param1:int) : §%T§
      {
         return this.§<G§[param1];
      }
   }
}

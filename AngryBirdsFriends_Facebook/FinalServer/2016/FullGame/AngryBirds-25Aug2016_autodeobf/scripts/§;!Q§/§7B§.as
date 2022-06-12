package §;!Q§
{
   import §##K§.§9#]§;
   import §##K§.§[V§;
   import §%$!§.§,"n§;
   import §>!#§.§&"z§;
   import §>!#§.§,"W§;
   import flash.events.EventDispatcher;
   
   public class §7B§ extends EventDispatcher
   {
      
      public static const §2!k§:String = "EASTER_2013";
      
      private static var §^!Q§:§&"z§;
       
      
      private var §`!h§:int = 0;
      
      private var §>!x§:int = 0;
      
      private const §8#M§:int = 200;
      
      private var §^$5§:§["y§;
      
      public function §7B§(param1:Object)
      {
         super();
         this.§^$5§ = new §["y§(param1);
         this.§`!h§ = this.§^$5§.§8!E§;
         §^!Q§ = new §&"z§(int(this.§ #g§) || 1);
      }
      
      private function §;!]§(param1:Object) : void
      {
         this.§^$5§.§^"d§(param1);
      }
      
      public function §!"Z§() : Boolean
      {
         return this.§^$5§.§-"4§ == this.§^$5§.§-"E§ - 1;
      }
      
      public function get § #g§() : int
      {
         return this.§^$5§.§8!E§;
      }
      
      public function get §null§() : int
      {
         return this.§^$5§.entriesPerSlot;
      }
      
      public function get §?!>§() : int
      {
         return this.§^$5§.entriesPerSlot;
      }
      
      public function §^A§() : int
      {
         return this.§^$5§.§^A§();
      }
      
      public function get §?#K§() : String
      {
         return this.§^$5§.token;
      }
      
      public function §8"#§() : Boolean
      {
         return this.§^$5§.§5c§();
      }
      
      public function §=#t§() : Boolean
      {
         return this.§^$5§.§6#n§();
      }
      
      public function §5$6§() : Boolean
      {
         return this.§^$5§.email != "" && this.§^$5§.email != null;
      }
      
      public function get dataModel() : §,"n§
      {
         return §8G§.§%#S§.dataModel;
      }
      
      public function get email() : String
      {
         return this.§^$5§.email;
      }
      
      public function get §&!J§() : int
      {
         return this.§^$5§.§@N§();
      }
      
      public function get §["6§() : int
      {
         return this.§^$5§.§;#$§();
      }
      
      public function §+"J§() : void
      {
         this.§^$5§.§+"J§();
      }
      
      private function §>"!§(param1:§9#]§) : void
      {
         this.§^$5§.§^"d§(param1.§]#y§);
         dispatchEvent(new §9#]§(§9#]§.§@";§));
      }
      
      public function §-"r§(param1:String, param2:int = 0) : void
      {
         if(param2 > 0)
         {
            §,"W§.§!"e§(param2);
         }
         if(this.§ #g§ + param2 >= this.§null§)
         {
            §,"W§.§?L§();
         }
         if(this.§["6§ + param2 >= this.§&!J§)
         {
            §,"W§.§7#A§();
         }
         var _loc3_:§[V§ = new §[V§(param1,this.§^$5§.token,param2);
         _loc3_.addEventListener(§9#]§.§,$§,this.§>"!§);
      }
      
      public function § #1§(param1:Date) : Boolean
      {
         var _loc2_:Date = new Date(2013,4,1,0,0,0,0);
         return param1.getTime() < _loc2_.getTime();
      }
      
      public function §`$$§(param1:String, param2:Boolean = false) : Number
      {
         var _loc3_:uint = §^!Q§.§'!C§;
         var _loc5_:int = param1.split("-")[1];
         if(this.§`!h§ != this.§ #g§ || this.§>!x§ != _loc5_ || param2)
         {
            _loc3_ = (this.§ #g§ + _loc5_) * (_loc5_ * 1768);
            §^!Q§.§'!C§ = _loc3_;
         }
         this.§`!h§ = this.§ #g§;
         this.§>!x§ = _loc5_;
         return Number(§^!Q§.§?!8§);
      }
   }
}

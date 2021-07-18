package §<"F§
{
   import §,l§.§+I§;
   import §0!i§.§7-§;
   import §0!i§.§]q§;
   import §9@§.§99§;
   import §9@§.§@q§;
   import flash.events.EventDispatcher;
   
   public class §["M§ extends EventDispatcher
   {
      
      public static const §0<§:String = "EASTER_2013";
      
      private static var §!+§:§99§;
       
      
      private var §!"K§:int = 0;
      
      private var §`t§:int = 0;
      
      private const §6j§:int = 200;
      
      private var §=v§:§6!G§;
      
      public function §["M§(param1:Object)
      {
         super();
         this.§=v§ = new §6!G§(param1);
         this.§!"K§ = this.§=v§.§^!!§;
         §!+§ = new §99§(int(this.§5!4§) || 1);
      }
      
      private function §`o§(param1:Object) : void
      {
         this.§=v§.§;x§(param1);
      }
      
      public function §1"B§() : Boolean
      {
         return this.§=v§.§0"<§ == this.§=v§.§>"R§ - 1;
      }
      
      public function get §5!4§() : int
      {
         return this.§=v§.§^!!§;
      }
      
      public function get §,!2§() : int
      {
         return this.§=v§.entriesPerSlot;
      }
      
      public function get §="U§() : int
      {
         return this.§=v§.entriesPerSlot;
      }
      
      public function §5t§() : int
      {
         return this.§=v§.§5t§();
      }
      
      public function get §"!d§() : String
      {
         return this.§=v§.token;
      }
      
      public function §+4§() : Boolean
      {
         return this.§=v§.§+!n§();
      }
      
      public function §+!!§() : Boolean
      {
         return this.§=v§.§;&§();
      }
      
      public function §<!'§() : Boolean
      {
         return this.§=v§.email != "" && this.§=v§.email != null;
      }
      
      public function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
      
      public function get email() : String
      {
         return this.§=v§.email;
      }
      
      public function get §,"!§() : int
      {
         return this.§=v§.§34§();
      }
      
      public function get §-"5§() : int
      {
         return this.§=v§.§+"&§();
      }
      
      public function § "A§() : void
      {
         this.§=v§.§ "A§();
      }
      
      private function §3"?§(param1:§]q§) : void
      {
         this.§=v§.§;x§(param1.§[j§);
         dispatchEvent(new §]q§(§]q§.§!"D§));
      }
      
      public function §-!8§(param1:String, param2:int = 0) : void
      {
         if(param2 > 0)
         {
            §@q§.§"U§(param2);
         }
         if(this.§5!4§ + param2 >= this.§,!2§)
         {
            §@q§.§^r§();
         }
         if(this.§-"5§ + param2 >= this.§,"!§)
         {
            §@q§.§+!]§();
         }
         var _loc3_:§7-§ = new §7-§(param1,this.§=v§.token,param2);
         _loc3_.addEventListener(§]q§.§@!u§,this.§3"?§);
      }
      
      public function §8!+§(param1:Date) : Boolean
      {
         var _loc2_:Date = new Date(2013,4,1,0,0,0,0);
         return param1.getTime() < _loc2_.getTime();
      }
      
      public function §&!§(param1:String, param2:Boolean = false) : Number
      {
         var _loc3_:uint = §!+§.§"O§;
         var _loc4_:String;
         var _loc5_:int = (_loc4_ = param1).split("-")[1];
         if(this.§!"K§ != this.§5!4§ || this.§`t§ != _loc5_ || param2)
         {
            _loc3_ = (this.§5!4§ + _loc5_) * (_loc5_ * 1768);
            §!+§.§"O§ = _loc3_;
         }
         this.§!"K§ = this.§5!4§;
         this.§`t§ = _loc5_;
         return Number(§!+§.§@"&§);
      }
   }
}

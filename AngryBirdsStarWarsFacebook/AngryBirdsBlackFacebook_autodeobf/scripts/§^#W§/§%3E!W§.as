package §^#W§
{
   import §#f§.§3@§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §>!W§
   {
       
      
      private var txt:String;
      
      public var §2#;§:§@#§;
      
      public var §,"_§:§@#§;
      
      private var paused:Boolean = false;
      
      private var §'"M§:TextField;
      
      public var §50§:Boolean = false;
      
      public var §>d§:Boolean = false;
      
      public function §>!W§(param1:TextField)
      {
         super();
         this.§%!e§ = param1;
      }
      
      public function §#!c§(param1:§@#§) : void
      {
         this.§2#;§ = param1;
         this.§>d§ = true;
      }
      
      private function §8!%§(param1:Event) : void
      {
         this.§50§ = false;
         if(!this.paused)
         {
            this.complete();
         }
      }
      
      private function §,G§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.BACKSPACE || param1.keyCode == Keyboard.DELETE)
         {
            this.paused = true;
         }
         else
         {
            this.paused = false;
         }
      }
      
      public function complete() : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:Array = null;
         var _loc10_:int = 0;
         this.§50§ = false;
         var _loc1_:String = this.§'"M§.text.charAt(this.§'"M§.caretIndex);
         if(this.§'"M§.caretIndex < this.§'"M§.text.length && _loc1_ != "" && _loc1_ != " ")
         {
            return;
         }
         var _loc2_:int = §3@§.§3b§(this.§'"M§);
         var _loc3_:String = this.§'"M§.text.substr(_loc2_,this.§'"M§.caretIndex);
         var _loc4_:Array = _loc3_.split("");
         if(!this.§,"_§ || _loc2_ < 1)
         {
            _loc5_ = this.§2#;§.§#"_§(_loc4_);
         }
         else
         {
            _loc5_ = this.§,"_§.§#"_§(_loc4_);
         }
         if(_loc5_.length > 0)
         {
            _loc6_ = this.§'"M§.text;
            _loc7_ = this.§'"M§.caretIndex;
            _loc8_ = §3@§.§+"O§(this.§'"M§);
            _loc10_ = (_loc9_ = _loc6_.split(" ")).indexOf(_loc8_);
            _loc8_ += _loc5_;
            _loc9_.splice(_loc10_,1,_loc8_);
            this.§'"M§.text = _loc9_.join(" ");
            this.§'"M§.setSelection(_loc7_,_loc7_ + _loc5_.length);
            this.§50§ = true;
         }
      }
      
      public function §&!z§(param1:String, param2:Boolean = false, param3:Boolean = true) : Boolean
      {
         if(this.§,"_§ && param2)
         {
            if(this.§,"_§.contains(param1))
            {
               return true;
            }
         }
         if(param3)
         {
            return this.§2#;§.contains(param1);
         }
         return false;
      }
      
      public function get §%!e§() : TextField
      {
         return this.§'"M§;
      }
      
      public function set §%!e§(param1:TextField) : void
      {
         var value:TextField = param1;
         try
         {
            this.§'"M§.removeEventListener(Event.CHANGE,this.§8!%§);
            this.§'"M§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§,G§);
         }
         catch(e:Error)
         {
         }
         finally
         {
            this.§'"M§ = value;
            this.§'"M§.addEventListener(Event.CHANGE,this.§8!%§);
            this.§'"M§.addEventListener(KeyboardEvent.KEY_DOWN,this.§,G§);
         }
      }
      
      public function §]#Z§(param1:String) : String
      {
         var str:String = param1;
         try
         {
            return this.§2#;§.§]#Z§(str);
         }
         catch(e:Error)
         {
            if(§,"_§)
            {
               return §,"_§.§]#Z§(str);
            }
            throw new Error("No correct case found");
         }
      }
   }
}

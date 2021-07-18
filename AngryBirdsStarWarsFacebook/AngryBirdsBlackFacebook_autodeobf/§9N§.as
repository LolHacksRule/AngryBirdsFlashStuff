package
{
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public final class §9N§ implements §!!K§
   {
      
      private static var §8o§:§9N§ = null;
       
      
      private var §-!R§:Vector.<§@#T§>;
      
      public function §9N§()
      {
         this.§-!R§ = new Vector.<§@#T§>();
         super();
      }
      
      public static function get §%!E§() : §9N§
      {
         if(!§8o§)
         {
            §8o§ = new §9N§();
         }
         return §8o§;
      }
      
      public function add(param1:uint, param2:uint, param3:Function, param4:Boolean = false, param5:Boolean = true) : Boolean
      {
         if(!this.§`#-§(param1))
         {
            throw new Error("Invalid keystroke");
         }
         if(!this.§ m§(param2))
         {
            throw new Error("Invalid modifier");
         }
         if(!this.§9;§(param1,param2))
         {
            throw new Error("Invalid keystroke + modifier combination");
         }
         if(typeof param3 != "function")
         {
            throw new Error("Invalid callback function");
         }
         if(param5)
         {
            this.§-!R§ = new Vector.<§@#T§>();
         }
         if(!this.§%^§(param1,param2))
         {
            this.§-!R§.push(new §@#T§(param1,param2,param3));
         }
         else if(param4)
         {
            §%!E§.§27§(param1,param2);
            this.§-!R§.push(new §@#T§(param1,param2,param3));
         }
         return false;
      }
      
      public function §>"k§(param1:uint, param2:uint) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(!this.§%"+§())
         {
            if(this.§%^§(param1,param2))
            {
               _loc4_ = 0;
               _loc5_ = this.§-!R§.length;
               while(_loc4_ < _loc5_)
               {
                  if(this.§'#O§(param1,param2,this.§-!R§[_loc4_]))
                  {
                     break;
                  }
                  _loc4_++;
               }
               this.§-!R§.splice(_loc4_,1);
            }
         }
         return false;
      }
      
      private function §%^§(param1:uint, param2:uint) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:int = this.§-!R§.length;
         while(_loc4_ < _loc5_)
         {
            if(this.§'#O§(param1,param2,this.§-!R§[_loc4_]))
            {
               _loc3_ = true;
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §1S§() : void
      {
         if(!this.§%"+§())
         {
            while(this.§-!R§.length > 0)
            {
               this.§-!R§.pop();
            }
         }
      }
      
      public function §%"+§() : Boolean
      {
         return this.§-!R§.length == 0 ? true : false;
      }
      
      public function §?B§(param1:KeyboardEvent) : Boolean
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:Boolean = false;
         if(!this.§%"+§())
         {
            _loc3_ = this.§]y§(param1);
            _loc4_ = param1.keyCode;
            _loc5_ = 0;
            _loc6_ = this.§-!R§.length;
            while(_loc5_ < _loc6_)
            {
               if(this.§'#O§(_loc4_,_loc3_,this.§-!R§[_loc5_]))
               {
                  _loc2_ = true;
                  break;
               }
               _loc5_++;
            }
            if(_loc2_)
            {
               if(this.§-!R§[_loc5_].released)
               {
                  this.§-!R§[_loc5_].released = false;
                  try
                  {
                     this.§-!R§[_loc5_].callback();
                  }
                  catch(error:Error)
                  {
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function § "O§(param1:KeyboardEvent) : Boolean
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:Boolean = false;
         if(!this.§%"+§())
         {
            _loc3_ = this.§]y§(param1);
            _loc4_ = param1.keyCode;
            _loc5_ = 0;
            _loc6_ = this.§-!R§.length;
            while(_loc5_ < _loc6_)
            {
               if(_loc4_ == this.§-!R§[_loc5_].keystroke && !this.§-!R§[_loc5_].released)
               {
                  _loc2_ = true;
                  this.§-!R§[_loc5_].released = true;
               }
               _loc5_++;
            }
         }
         return _loc2_;
      }
      
      public function §9;§(param1:uint, param2:uint) : Boolean
      {
         var _loc3_:* = true;
         if(param1 == §=D§.ENTER)
         {
            if(param2 != §=D§.§2D§)
            {
               _loc3_ = Boolean(this.§0u§(param2));
            }
         }
         if(param1 == §=D§.TAB)
         {
            _loc3_ = param2 == §=D§.§2D§;
         }
         if(param1 == §=D§.§`!c§)
         {
            _loc3_ = !this.§0u§(param2);
         }
         if(param2 == §=D§.NONE)
         {
            _loc3_ = !this.§"#J§(param1);
         }
         if(param1 == §=D§.SPACE)
         {
            _loc3_ = param2 != §=D§.NONE;
         }
         return _loc3_;
      }
      
      private function §`#-§(param1:uint) : Boolean
      {
         var _loc2_:Boolean = true;
         switch(param1)
         {
            case §=D§.§5#Y§:
            case §=D§.SHIFT:
            case §=D§.§2!O§:
            case Keyboard.BACKSPACE:
            case Keyboard.CAPS_LOCK:
            case Keyboard.INSERT:
            case Keyboard.DELETE:
            case Keyboard.HOME:
            case Keyboard.PAGE_UP:
            case Keyboard.PAGE_DOWN:
               _loc2_ = false;
         }
         return _loc2_;
      }
      
      private function § m§(param1:uint) : Boolean
      {
         var _loc2_:Boolean = false;
         switch(param1)
         {
            case §=D§.NONE:
            case §=D§.§5#Y§:
            case §=D§.SHIFT:
            case §=D§.§2!O§:
            case §=D§.§2D§:
            case §=D§.§@R§:
            case §=D§.§?!_§:
               _loc2_ = true;
         }
         return _loc2_;
      }
      
      private function §0u§(param1:uint) : Boolean
      {
         var _loc2_:Boolean = false;
         switch(param1)
         {
            case §=D§.§2D§:
            case §=D§.§@R§:
            case §=D§.§?!_§:
               _loc2_ = true;
         }
         return _loc2_;
      }
      
      private function §"#J§(param1:uint) : Boolean
      {
         var _loc2_:Boolean = false;
         switch(param1)
         {
            case §=D§.F1:
            case §=D§.F2:
            case §=D§.F3:
            case §=D§.F4:
            case §=D§.F5:
            case §=D§.F6:
            case §=D§.F7:
            case §=D§.F8:
            case §=D§.F9:
            case §=D§.F10:
            case §=D§.F11:
            case §=D§.F12:
            case §=D§.F13:
            case §=D§.F14:
            case §=D§.F15:
               _loc2_ = true;
         }
         return _loc2_;
      }
      
      private function §3"%§(param1:uint, param2:uint, param3:Function) : void
      {
         this.§-!R§.push(new §@#T§(param1,param2,param3));
      }
      
      private function §27§(param1:uint, param2:uint) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = this.§-!R§.length;
         while(_loc3_ < _loc4_)
         {
            if(this.§'#O§(param1,param2,this.§-!R§[_loc3_]))
            {
               break;
            }
            _loc3_++;
         }
         this.§-!R§.splice(_loc3_,1);
      }
      
      private function §'#O§(param1:uint, param2:uint, param3:§@#T§) : Boolean
      {
         return param3.keystroke == param1 && param3.§=!u§ == param2;
      }
      
      private function §]y§(param1:KeyboardEvent) : uint
      {
         var _loc2_:uint = §=D§.NONE;
         if(param1.altKey)
         {
            _loc2_ += §=D§.§5#Y§;
         }
         if(param1.ctrlKey)
         {
            _loc2_ += §=D§.§2!O§;
         }
         if(param1.shiftKey)
         {
            _loc2_ += Keyboard.SHIFT;
         }
         return _loc2_;
      }
   }
}

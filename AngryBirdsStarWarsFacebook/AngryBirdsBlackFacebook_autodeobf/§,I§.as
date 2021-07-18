package
{
   import flash.events.KeyboardEvent;
   
   public final class §,I§ implements §!!K§
   {
      
      private static var §8o§:§,I§ = null;
       
      
      public const §3#K§:uint = 1;
      
      private var §@"p§:Vector.<§;s§>;
      
      public function §,I§()
      {
         this.§@"p§ = new Vector.<§;s§>();
         super();
      }
      
      public static function get §%!E§() : §,I§
      {
         if(!§8o§)
         {
            §8o§ = new §,I§();
         }
         return §8o§;
      }
      
      public function add(param1:Array, param2:Function, param3:Boolean = false, param4:Boolean = true) : Boolean
      {
         var _loc5_:Boolean = true;
         if(!this.§+M§(param1))
         {
            throw new Error("A keyboard sequence can not have less than " + this.§3#K§ + " elements");
         }
         if(typeof param2 != "function")
         {
            throw new Error("Invalid callback function");
         }
         if(param4)
         {
            this.§@"p§ = new Vector.<§;s§>();
         }
         if(!this.§%^§(param1))
         {
            this.§@"p§.push(new §;s§(param1,param2));
         }
         else if(param3)
         {
            this.§>"k§(param1);
            this.§@"p§.push(new §;s§(param1,param2));
         }
         else
         {
            _loc5_ = false;
         }
         return _loc5_;
      }
      
      public function §>"k§(param1:Array) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:Boolean = false;
         if(!this.§%"+§())
         {
            if(this.§%^§(param1))
            {
               _loc3_ = 0;
               _loc4_ = this.§@"p§.length;
               while(_loc3_ < _loc4_)
               {
                  if(this.§2"[§(param1,this.§@"p§[_loc3_]))
                  {
                     break;
                  }
                  _loc3_++;
               }
               this.§@"p§.splice(_loc3_,1);
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      public function §%^§(param1:Array) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:int = this.§@"p§.length;
         while(_loc3_ < _loc4_)
         {
            if(this.§2"[§(param1,this.§@"p§[_loc3_]))
            {
               _loc2_ = true;
               break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §1S§() : void
      {
         if(!this.§%"+§())
         {
            while(this.§@"p§.length > 0)
            {
               this.§@"p§.pop();
            }
         }
      }
      
      public function §%"+§() : Boolean
      {
         return this.§@"p§.length == 0 ? true : false;
      }
      
      public function §+M§(param1:Array) : Boolean
      {
         return param1.length < this.§3#K§ ? false : true;
      }
      
      public function §?B§(param1:KeyboardEvent) : Boolean
      {
         return false;
      }
      
      public function § "O§(param1:KeyboardEvent) : Boolean
      {
         var _loc3_:uint = 0;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc2_:Boolean = false;
         if(!this.§%"+§())
         {
            _loc3_ = param1.charCode;
            _loc4_ = false;
            if(_loc3_ == 0)
            {
               _loc3_ = param1.keyCode;
            }
            switch(_loc3_)
            {
               case §=D§.§5#Y§:
               case §=D§.SHIFT:
               case §=D§.§2!O§:
                  _loc4_ = true;
            }
            if(!_loc4_)
            {
               _loc5_ = 0;
               _loc6_ = this.§@"p§.length;
               _loc7_ = true;
               while(_loc5_ < _loc6_)
               {
                  if(_loc3_ == this.§@"p§[_loc5_].keystrokes.shift())
                  {
                     if(this.§@"p§[_loc5_].keystrokes.length == 0)
                     {
                        _loc2_ = true;
                     }
                     else
                     {
                        _loc7_ = false;
                     }
                  }
                  if(_loc7_)
                  {
                     this.§@"p§[_loc5_].keystrokes = this.§@"p§[_loc5_].keyCodes.concat();
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  _loc5_++;
                  _loc7_ = true;
               }
               if(_loc2_)
               {
                  this.§5§(this.§@"p§[_loc5_].callback);
               }
            }
         }
         return _loc2_;
      }
      
      private function §2"[§(param1:Array, param2:§;s§) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:Boolean = true;
         if(param1.length == param2.keyCodes.length)
         {
            _loc4_ = 0;
            _loc5_ = param1.length;
            while(_loc4_ < _loc5_)
            {
               if(param1[_loc4_] != param2.keyCodes[_loc4_])
               {
                  _loc3_ = false;
                  break;
               }
               _loc4_++;
            }
         }
         return _loc3_;
      }
      
      private function §5§(param1:Function) : void
      {
         if(typeof param1 == "function")
         {
            try
            {
               param1();
            }
            catch(error:Error)
            {
            }
         }
      }
   }
}

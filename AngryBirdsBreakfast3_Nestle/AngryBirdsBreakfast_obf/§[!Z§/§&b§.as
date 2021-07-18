package §[!Z§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&b§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §0[§:int;
      
      public var §=A§:Number = 1;
      
      private var §[!_§:Vector.<§`v§>;
      
      private var §8!u§:Number;
      
      public function §&b§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§0[§ = param2;
                  while(true)
                  {
                     this.§=A§ = param3;
                     while(_loc4_ || this)
                     {
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              this.§8!u§ = this.§=A§;
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                           }
                           return;
                           addr49:
                           addr71:
                        }
                        continue loop1;
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr49);
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §]!U§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`v§ = null;
         if(_loc3_ || _loc2_)
         {
            if(this.§[!_§.length < this.§0[§)
            {
               if(_loc3_)
               {
                  §§goto(addr34);
               }
            }
            var _loc1_:* = int(this.§[!_§.length - 1);
            while(_loc1_ >= 0)
            {
               _loc2_ = this.§[!_§[_loc1_];
               if(!(_loc4_ && _loc3_))
               {
                  if(_loc2_.§%!+§ <= 0)
                  {
                     if(_loc3_)
                     {
                        addr73:
                        _loc2_.§,^§();
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                     }
                  }
                  §§push(_loc1_);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  continue;
               }
               §§goto(addr73);
            }
            return this.§[!_§.length < this.§0[§;
         }
         addr34:
         return true;
      }
      
      public function §9!q§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §`v§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[3] = param3;
                        addr193:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop4;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §]"2§(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§`v§> = null;
         var _loc4_:§`v§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§`v§ = §`v§(param1.currentTarget);
         if(!(_loc7_ && this))
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§]"2§);
            if(!(_loc7_ && _loc2_))
            {
               if(this.§[!_§.indexOf(_loc2_) > -1)
               {
                  addr67:
                  _loc3_ = this.§[!_§.splice(this.§[!_§.indexOf(_loc2_),1);
                  (_loc4_ = _loc3_[0]).destroy();
                  _loc4_ = null;
                  _loc3_ = null;
                  _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
                  if(_loc6_ || param1)
                  {
                     dispatchEvent(_loc5_);
                  }
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      public function §2x§() : Boolean
      {
         return this.§[!_§.length > 0;
      }
      
      public function §>!%§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§`v§ = null;
         while(this.§[!_§.length > 0)
         {
            _loc1_ = this.§[!_§[0];
            if(_loc2_ || _loc2_)
            {
               _loc1_.§,^§();
            }
         }
      }
      
      public function §'D§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`v§ = null;
         if(!(_loc4_ && this))
         {
            this.§=A§ = 0;
         }
         for each(_loc1_ in this.§[!_§)
         {
            if(!_loc4_)
            {
               _loc1_.§?!t§();
            }
         }
      }
      
      public function §&",§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`v§ = null;
         if(_loc4_ || this)
         {
            this.§=A§ = this.§8!u§;
         }
         for each(_loc1_ in this.§[!_§)
         {
            if(_loc4_)
            {
               _loc1_.§6T§();
            }
         }
      }
      
      public function §7D§(param1:String) : §`v§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§[!_§.length)
            {
               if(!_loc4_)
               {
                  break;
               }
               loop2:
               while(_loc4_ && this)
               {
                  while(true)
                  {
                     continue loop2;
                  }
               }
               continue;
               addr33:
            }
            else if(§`v§(this.§[!_§[_loc2_]).id == param1)
            {
               if(!(_loc4_ && param1))
               {
                  return §`v§(this.§[!_§[_loc2_]);
               }
               §§goto(addr86);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr33);
            }
         }
         return null;
      }
   }
}

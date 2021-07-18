package §,%§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]G§ implements §&!Z§
   {
       
      
      private var §do §:Vector.<§&!Z§>;
      
      private var §3!q§:Number;
      
      private var §`!;§:Boolean = false;
      
      private var § 2§:Number = 1.0;
      
      public function §]G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && this))
            {
               addr38:
               this.§3!q§ = 0;
               if(_loc2_ || this)
               {
                  this.§do § = new Vector.<§&!Z§>(0);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ 2§ = param1;
         }
      }
      
      public function add(param1:§&!Z§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(_loc4_ || param1)
         {
            §§push(param1 == null);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  addr55:
                  if(§§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr83);
                        }
                        §§goto(addr90);
                     }
                  }
               }
               addr83:
               if(this.§do §.indexOf(param1) == -1)
               {
                  if(!_loc3_)
                  {
                     addr86:
                     this.§do §.push(param1);
                     addr90:
                     _loc2_ = param1 as EventDispatcher;
                     if(!_loc3_)
                     {
                        if(_loc2_)
                        {
                           if(_loc3_ && _loc3_)
                           {
                           }
                        }
                        §§goto(addr112);
                     }
                     _loc2_.addEventListener(Event.§%%§,this.§ !e§);
                  }
                  §§goto(addr90);
               }
               addr112:
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr86);
      }
      
      public function set §=!A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!;§ = param1;
         }
      }
      
      public function §-!6§(param1:§&!Z§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§do §.indexOf(param1);
         if(!(_loc4_ && param1))
         {
            if(_loc2_ != -1)
            {
               if(_loc5_)
               {
                  addr58:
                  this.§do §.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     if(_loc5_ || this)
                     {
                        _loc3_.removeEventListener(Event.§%%§,this.§ !e§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function §@I§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§#!+§ = null;
         if(!_loc5_)
         {
            if(param1 == null)
            {
               if(_loc6_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§do §.length;
         §§push(_loc2_);
         if(_loc6_ || this)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§do §[_loc3_] as §#!+§));
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr77:
                     §§pop();
                     if(!_loc6_)
                     {
                        continue;
                     }
                     §§push(_loc4_.target == param1);
                  }
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     this.§do §.splice(_loc3_,1);
                     if(_loc5_ && param1)
                     {
                        continue;
                     }
                  }
               }
               §§push(_loc3_);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr77);
         }
      }
      
      public function §6>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§do §.length = 0;
         }
      }
      
      public function §1!=§(param1:Function, param2:Number, ... rest) : §+!E§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param1 == null)
            {
               if(_loc6_ || rest)
               {
                  §§goto(addr39);
               }
            }
            var _loc4_:§+!E§ = new §+!E§(param1,param2,rest);
            if(!_loc5_)
            {
               this.add(_loc4_);
            }
            return _loc4_;
         }
         addr39:
         return null;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(this.§`!;§)
         {
            return;
         }
         §§push(param1);
         if(_loc5_)
         {
            §§push(§§pop() * this.§ 2§);
            if(!(_loc6_ && param1))
            {
               addr35:
               §§push(Number(§§pop()));
            }
            param1 = §§pop();
            if(_loc5_ || this)
            {
               §§push(this);
               §§push(this.§3!q§);
               if(_loc5_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§3!q§ = §§pop();
               if(!_loc6_)
               {
                  if(this.§do §.length == 0)
                  {
                     if(_loc6_ && this)
                     {
                        §§goto(addr87);
                     }
                  }
                  §§goto(addr87);
               }
               return;
            }
            addr87:
            var _loc2_:int = this.§do §.length;
            var _loc3_:Vector.<§&!Z§> = this.§do §.concat();
            var _loc4_:int = 0;
            while(_loc4_ < _loc2_)
            {
               _loc3_[_loc4_].advanceTime(param1);
               if(!_loc5_)
               {
                  break;
               }
               _loc4_++;
               if(!_loc5_)
               {
                  break;
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function § !e§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-!6§(param1.target as §&!Z§);
         }
      }
      
      public function get §+B§() : Number
      {
         return this.§3!q§;
      }
   }
}

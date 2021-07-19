package §<!>§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §<#R§ implements § §
   {
       
      
      private var §1!b§:Vector.<§ §>;
      
      private var §-#H§:Number;
      
      private var §7!q§:Boolean = false;
      
      private var §<C§:Number = 1.0;
      
      public function §<#R§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§-#H§ = 0;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§1!b§ = new Vector.<§ §>(0);
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<C§ = param1;
         }
      }
      
      public function add(param1:§ §) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1 == null);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  addr35:
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           §§goto(addr63);
                        }
                        §§goto(addr71);
                     }
                  }
               }
               addr63:
               if(this.§1!b§.indexOf(param1) == -1)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr71:
                     this.§1!b§.push(param1);
                     addr75:
                     _loc2_ = param1 as EventDispatcher;
                     if(!(_loc3_ && _loc2_))
                     {
                        if(_loc2_)
                        {
                           if(_loc4_)
                           {
                              _loc2_.addEventListener(Event.§&!T§,this.§[!A§);
                           }
                        }
                     }
                  }
                  §§goto(addr75);
               }
               return;
            }
            §§goto(addr35);
         }
         §§goto(addr71);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§7!q§ = param1;
         }
      }
      
      public function §>"k§(param1:§ §) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§1!b§.indexOf(param1);
         if(_loc5_)
         {
            if(_loc2_ != -1)
            {
               if(!(_loc4_ && param1))
               {
                  addr48:
                  this.§1!b§.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     if(_loc4_)
                     {
                     }
                  }
                  §§goto(addr80);
               }
               _loc3_.removeEventListener(Event.§&!T§,this.§[!A§);
            }
            addr80:
            return;
         }
         §§goto(addr48);
      }
      
      public function §%#=§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§0!k§ = null;
         if(!_loc5_)
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
                  §§goto(addr27);
               }
            }
            var _loc2_:int = this.§1!b§.length;
            §§push(_loc2_);
            if(_loc6_)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§1!b§[_loc3_] as §0!k§));
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           continue;
                        }
                        §§push(_loc4_.target == param1);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc5_ && _loc2_)
                  {
                     continue;
                  }
                  this.§1!b§.splice(_loc3_,1);
                  if(!(_loc6_ || _loc2_))
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            return;
         }
         addr27:
      }
      
      public function §%W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1!b§.length = 0;
         }
      }
      
      public function §=#%§(param1:Function, param2:Number, ... rest) : §11§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || rest)
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§11§ = new §11§(param1,param2,rest);
         if(!_loc5_)
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            if(this.§7!q§)
            {
               if(_loc5_)
               {
                  return;
               }
               while(true)
               {
                  addr44:
                  if(!(_loc6_ && _loc2_))
                  {
                     return;
                  }
               }
               addr109:
            }
            while(true)
            {
               §§push(param1);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() * this.§<C§);
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               param1 = §§pop();
               addr102:
               while(true)
               {
                  addr56:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§-#H§);
                     if(!(_loc6_ && this))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§-#H§ = §§pop();
                  }
               }
               §§goto(addr109);
            }
         }
         for(; this.§1!b§.length == 0; if(_loc6_ && _loc3_)
         {
            continue;
         },§§goto(addr44))
         {
            if(_loc5_ || param1)
            {
               continue;
            }
            if(_loc5_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr102);
            }
            §§goto(addr56);
         }
         var _loc2_:int = this.§1!b§.length;
         var _loc3_:Vector.<§ §> = this.§1!b§.concat();
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc2_)
            {
               if(!_loc5_)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  break;
               }
            }
            else
            {
               _loc3_[_loc4_].advanceTime(param1);
            }
            _loc4_++;
         }
      }
      
      private function §[!A§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§>"k§(param1.target as § §);
         }
      }
      
      public function get §?#"§() : Number
      {
         return this.§-#H§;
      }
   }
}

package §2=§
{
   public class SimpleTweenContainer extends §=N§ implements §4x§
   {
       
      
      private var §`G§:Vector.<§4x§>;
      
      private var §,7§:Boolean = true;
      
      private var §92§:int = 0;
      
      public function SimpleTweenContainer(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§4x§ = null;
         if(!(_loc6_ && param2))
         {
            this.§`G§ = new Vector.<§4x§>();
            if(!_loc6_)
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               this.§`G§.push(_loc3_);
            }
         }
         if(!_loc6_)
         {
            this.§,7§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4x§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§`G§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc5_)
               {
                  §§push(!_loc1_.isCompleted);
                  if(!_loc4_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(false);
                        break;
                     }
                  }
               }
            }
            return true;
         }
         return §§pop();
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4x§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§`G§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ && _loc2_)
               {
                  addr74:
                  break;
               }
               §§push(!_loc1_.isPaused);
               if(_loc4_ && _loc2_)
               {
                  return §§pop();
               }
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         §§goto(addr74);
         §§push(false);
      }
      
      private function get §0l§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§,7§)
            {
               if(_loc1_ || _loc2_)
               {
                  return this.§`G§.length;
               }
               while(true)
               {
                  addr60:
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr68);
               }
               addr84:
            }
            while(true)
            {
               if(this.§`G§.length > this.§92§)
               {
                  if(_loc2_)
                  {
                     addr69:
                     break;
                  }
                  §§goto(addr60);
               }
               break;
               §§goto(addr84);
            }
            §§push(0);
            if(!(_loc2_ && _loc2_))
            {
               return §§pop();
            }
            addr68:
            return 1;
         }
         §§goto(addr69);
      }
      
      private function get §'!@§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§,7§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr44:
                  §§push(0);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return this.§92§;
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr44);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§4x§ = null;
         while(this.§`G§.length > 0)
         {
            _loc1_ = this.§`G§.shift();
            if(_loc2_ || _loc3_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4x§ = null;
         if(_loc5_ || this)
         {
            §§push(this.isCompleted);
            if(_loc5_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               addr53:
               for each(_loc1_ in this.§`G§)
               {
                  if(_loc5_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §,'§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4x§ = null;
         if(!_loc5_)
         {
            §§push(this.isCompleted);
            if(!(_loc5_ && _loc2_))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               addr52:
               for each(_loc1_ in this.§`G§)
               {
                  if(_loc4_ || this)
                  {
                     _loc1_.§,'§();
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4x§ = null;
         for each(_loc1_ in this.§`G§)
         {
            if(!_loc5_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4x§ = null;
         for each(_loc1_ in this.§`G§)
         {
            if(_loc4_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §#j§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4x§ = null;
         if(_loc3_ || this)
         {
            §2+§ = -§'r§;
            if(_loc3_)
            {
               addr33:
               this.§92§ = 0;
            }
            §§push(0);
            if(!(_loc4_ && this))
            {
               §§push(int(§§pop()));
            }
            var _loc1_:* = §§pop();
            while(_loc1_ < this.§`G§.length)
            {
               _loc2_ = this.§`G§[_loc1_];
               if(_loc4_)
               {
                  continue;
               }
               _loc2_.§#j§();
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
               §§push(_loc1_);
               if(_loc3_ || _loc1_)
               {
                  §§push(§§pop() + 1);
                  if(_loc3_)
                  {
                     addr97:
                     §§push(int(§§pop()));
                  }
                  _loc1_ = §§pop();
                  continue;
               }
               §§goto(addr97);
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§4x§ = null;
         if(_loc6_)
         {
            §2+§ += param1;
            if(_loc6_ || this)
            {
               if(§2+§ < 0)
               {
                  if(_loc7_)
                  {
                     §§goto(addr41);
                  }
               }
               §§goto(addr41);
            }
            return;
         }
         addr41:
         §§push(this.§0l§);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§'!@§);
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < _loc3_ + _loc2_)
         {
            _loc5_ = this.§`G§[_loc4_];
            if(!(_loc7_ && _loc3_))
            {
               _loc5_.update(param1);
               loop1:
               while(true)
               {
                  addr124:
                  while(true)
                  {
                     this.§];§(_loc5_);
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc7_)
                           {
                              addr101:
                              §§push(int(§§pop()));
                           }
                           _loc4_ = §§pop();
                           if(!_loc7_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr101);
                     }
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr124);
            }
         }
         if(!_loc7_)
         {
            this.§1!D§();
         }
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.update(0);
         }
      }
      
      private function §];§(param1:§4x§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(param1.isCompleted)
            {
               if(_loc5_ || param1)
               {
                  addr34:
                  §§push(this.§,7§);
                  if(!(_loc4_ && this))
                  {
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§92§);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!(_loc4_ && _loc3_))
                        {
                           _loc2_.§92§ = _loc3_;
                        }
                        if(!_loc5_)
                        {
                        }
                        §§goto(addr109);
                     }
                     if(this.§92§ < this.§`G§.length)
                     {
                        if(_loc5_ || _loc3_)
                        {
                        }
                     }
                  }
                  §§goto(addr109);
               }
               this.§`G§[this.§92§].play();
            }
            addr109:
            return;
         }
         §§goto(addr34);
      }
      
      private function §1!D§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.isCompleted);
            if(_loc4_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr48:
                     if(!§""§)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.§#j§();
                           if(!_loc3_)
                           {
                              §§goto(addr71);
                           }
                        }
                     }
                     else if(§>!@§ != null)
                     {
                     }
                     §§goto(addr86);
                  }
                  addr71:
                  this.play();
                  if(!(_loc4_ || this))
                  {
                     try
                     {
                        addr86:
                        §>!@§();
                        if(!_loc3_)
                        {
                           §>!@§ = null;
                        }
                        §§goto(addr142);
                     }
                     catch(e:Error)
                     {
                        var _loc2_:* = e;
                        if(_loc4_ || _loc1_)
                        {
                           §>!@§ = null;
                           if(_loc4_ || _loc2_)
                           {
                           }
                           §§goto(addr137);
                        }
                        if(!§+j§)
                        {
                           addr137:
                           throw e;
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr142);
                  }
                  addr142:
                  return;
               }
               §§goto(addr86);
            }
            §§goto(addr48);
         }
         §§goto(addr86);
      }
   }
}

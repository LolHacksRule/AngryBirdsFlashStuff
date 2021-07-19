package §'!N§
{
   import §8P§.§&-§;
   import §<u§.§]!Q§;
   import flash.display.MovieClip;
   
   public class §#v§ extends §2O§
   {
       
      
      public var §2!T§:int;
      
      public var §@"§:int;
      
      public var §!!`§:int;
      
      public var §!!"§:int;
      
      public var §-!S§:Number;
      
      public var §@3§:Number;
      
      public var §9G§:Number;
      
      public var §-!c§:Number;
      
      public var §&J§:Number;
      
      public function §#v§(param1:XML, param2:§2O§, param3:§]!Q§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §3!_§ = true;
         }
         while(!_loc5_);
         
      }
      
      public function §;!H§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            this.§!!`§ = param6;
            loop0:
            while(true)
            {
               this.§!!"§ = param1 * this.§!!`§;
               while(true)
               {
                  this.§&J§ = param7;
                  loop2:
                  while(true)
                  {
                     this.§9G§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§-!c§ = param3;
                        addr180:
                        while(true)
                        {
                           this.§-!S§ = param4;
                           while(true)
                           {
                              this.§@3§ = param5;
                              addr161:
                              while(!_loc8_)
                              {
                                 continue loop0;
                              }
                              addr63:
                              continue loop2;
                              if(_loc9_ || param2)
                              {
                                 this.§@"§ += Math.ceil((§],§.length - this.§!!"§) / (this.§!!`§ * this.§&J§));
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr153);
         }
      }
      
      public function §%<§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param1);
            if(!(_loc5_ && _loc2_))
            {
               §§push(0);
               loop0:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc6_ || _loc2_)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              param1 = §§pop();
                              addr99:
                              while(true)
                              {
                                 addr40:
                                 addr31:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    §§goto(addr40);
                                 }
                                 else
                                 {
                                    §§push(this.§2!T§);
                                    if(!(_loc5_ && this))
                                    {
                                       addr109:
                                       §§push(§§pop() * this.§&J§);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() * this.§!!`§);
                                       }
                                       §§push(int(§§pop()));
                                    }
                                 }
                                 var _loc2_:* = §§pop();
                                 §§push(_loc2_);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(int(§§pop() + this.§!!"§));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc4_:int = 0;
                                 while(true)
                                 {
                                    if(_loc4_ >= §],§.length)
                                    {
                                       while(_loc6_)
                                       {
                                          §§push(§§findproperty(x));
                                          §§push(this.§9G§);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() - this.§2!T§ * this.§-!S§);
                                          }
                                          §§pop().x = §§pop();
                                          do
                                          {
                                             §§push(§§findproperty(y));
                                             §§push(this.§-!c§);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(§§pop() - this.§2!T§ * this.§@3§);
                                             }
                                             §§pop().y = §§pop();
                                          }
                                          while(!(_loc6_ || this));
                                          
                                          if(_loc6_ || param1)
                                          {
                                             return;
                                          }
                                       }
                                       loop10:
                                       while(_loc5_ && _loc3_)
                                       {
                                          while(true)
                                          {
                                             _loc4_++;
                                             continue loop10;
                                          }
                                       }
                                       continue;
                                    }
                                    (§],§[_loc4_] as §&-§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                                    §§goto(addr249);
                                 }
                              }
                           }
                           addr98:
                        }
                        else
                        {
                           §§goto(addr109);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr40);
               }
            }
            §§goto(addr98);
         }
         §§goto(addr56);
      }
   }
}

package §_-8d§
{
   import §_-aC§.§_-ML§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §_-tA§ extends EventDispatcher
   {
       
      
      private var §_-Df§:String = "";
      
      private var §_-Bl§:String;
      
      private var §_-sT§:URLLoader;
      
      private var §_-MW§:Dictionary;
      
      private var §_-8X§:String = null;
      
      private var §_-Di§:String = null;
      
      private var §_-07e§:String = null;
      
      private var §_-0Ep§:Boolean;
      
      private var §_-SF§:§_-ML§;
      
      private var §_-00g§:§_-0FF§;
      
      private var §_-Mi§:Vector.<§_-0FF§>;
      
      private var §_-kV§:String = "pak";
      
      private var §_-07Q§:Boolean = true;
      
      private var §_-HX§:int = 1;
      
      public function §_-tA§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.§_-MW§ = new Dictionary();
            while(true)
            {
               this.§_-Mi§ = new Vector.<§_-0FF§>();
            }
            addr114:
         }
         loop1:
         while(true)
         {
            super();
            loop2:
            while(!_loc6_)
            {
               this.§_-Df§ = param2;
               while(true)
               {
                  this.§_-Bl§ = param1;
                  while(!(_loc6_ && param2))
                  {
                     this.§_-07Q§ = param3;
                     do
                     {
                        this.§_-HX§ = Math.max(1,param4);
                     }
                     while(_loc6_ && this);
                     
                     if(_loc5_ || param3)
                     {
                        if(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              return;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr114);
         }
      }
      
      public function get textureManager() : §_-0FF§
      {
         return this.§_-00g§;
      }
      
      public function §_-wY§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§_-MW§[param1] == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      private function §_-5U§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-0FF§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§_-Mi§.length)
            {
               return false;
            }
            _loc3_ = this.§_-Mi§[_loc2_];
            if(!(_loc5_ && _loc3_))
            {
               if(_loc3_.id != param1)
               {
                  while(true)
                  {
                     _loc2_++;
                     if(!_loc5_)
                     {
                        if(false)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     if(!(_loc5_ && this))
                     {
                        if(_loc4_ || _loc2_)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              continue;
                           }
                           addr128:
                           while(true)
                           {
                              this.§_-8X§ = param1;
                              addr120:
                              while(true)
                              {
                                 this.§_-Mi§.splice(_loc2_,1);
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc5_ && param1)
                           {
                              break loop0;
                           }
                           this.§_-Mi§.unshift(this.§_-00g§);
                           §§goto(addr120);
                        }
                        addr91:
                        break;
                     }
                     while(true)
                     {
                        if(_loc5_ && _loc2_)
                        {
                           §§goto(addr120);
                        }
                        §§goto(addr91);
                     }
                  }
                  return true;
               }
               break;
            }
            break;
         }
         while(true)
         {
            this.§_-00g§ = _loc3_;
            §§goto(addr128);
         }
      }
      
      public function §_-r7§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            while(true)
            {
               §§push(§§pop().toLowerCase());
               addr200:
               while(true)
               {
                  param1 = §§pop();
               }
            }
            addr198:
         }
         loop2:
         while(true)
         {
            §§push(this.§_-Er§());
            loop3:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     §§push(this.§_-en§());
                     loop4:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc2_ && param1))
                           {
                              break loop3;
                           }
                           break;
                        }
                        addr136:
                        loop5:
                        while(true)
                        {
                           §§push(this.§_-wY§(param1));
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && param1))
                                 {
                                    this.§_-5U§(param1);
                                 }
                                 addr151:
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(param1);
                                    if(_loc3_ || this)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() == this.§_-8X§);
                                          loop7:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§_-E2§(param1,false);
                                                      while(!_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            addr25:
                                                            return;
                                                            addr29:
                                                         }
                                                         else
                                                         {
                                                            addr102:
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               break loop10;
                                                            }
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(this.§_-07Q§);
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(_loc2_ && _loc2_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§push(!§§pop());
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop9;
                                                                     }
                                                                     addr134:
                                                                  }
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop3;
                                                         }
                                                      }
                                                      addr115:
                                                      if(!_loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§goto(addr29);
                                                      addr54:
                                                   }
                                                   §§goto(addr102);
                                                }
                                                dispatchEvent(new Event(Event.COMPLETE));
                                                §§goto(addr115);
                                                addr100:
                                             }
                                             §§goto(addr134);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr198);
                                       }
                                    }
                                    break;
                                 }
                                 break loop4;
                              }
                              this.§_-Wj§(param1);
                              if(_loc3_ || param1)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr151);
                                 }
                                 §§goto(addr25);
                              }
                              §§goto(addr54);
                           }
                           §§goto(addr200);
                        }
                     }
                     return;
                     addr196:
                  }
                  break;
               }
               §§goto(addr136);
            }
            this.§_-07e§ = param1;
            §§goto(addr196);
         }
      }
      
      private function §_-Wj§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = "";
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§_-Df§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  if(_loc4_ || this)
                  {
                     addr211:
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§pop();
                           addr214:
                           while(true)
                           {
                              §§push(this.§_-Df§);
                              if(_loc4_ || this)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                        addr213:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              this.§_-Di§ = param1;
                              while(true)
                              {
                                 this.§_-sT§ = new URLLoader();
                                 loop6:
                                 for(; _loc4_; while(true)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       continue loop6;
                                    }
                                    this.§_-sT§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                    §§goto(addr103);
                                    §§goto(addr52);
                                 },§§goto(addr54))
                                 {
                                    this.§_-sT§.dataFormat = URLLoaderDataFormat.BINARY;
                                    while(_loc4_ || _loc2_)
                                    {
                                       this.§_-sT§.addEventListener(Event.COMPLETE,this.onComplete);
                                       continue loop6;
                                       addr70:
                                       if(_loc3_ && this)
                                       {
                                          continue;
                                       }
                                       addr77:
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          this.§_-sT§.load(new URLRequest(this.§_-Bl§ + "packages/" + param1 + "." + this.§_-kV§ + _loc2_));
                                          addr84:
                                          if(_loc3_)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§goto(addr70);
                                                }
                                                else
                                                {
                                                   while(!_loc3_)
                                                   {
                                                      this.§_-sT§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                      continue loop10;
                                                   }
                                                   §§goto(addr214);
                                                   addr103:
                                                }
                                             }
                                             continue;
                                          }
                                          addr52:
                                          if(_loc4_)
                                          {
                                             return;
                                             addr54:
                                          }
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          §§push("?version=");
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + this.§_-Df§);
                                          }
                                          §§push(§§pop());
                                          continue loop0;
                                          §§goto(addr77);
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        §§goto(addr171);
                     }
                  }
                  §§goto(addr213);
               }
               §§goto(addr211);
            }
         }
         §§goto(addr54);
      }
      
      private function §_-Er§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(this.§_-sT§));
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr44:
                     §§push(this.§_-0Ep§);
                     if(!_loc1_)
                     {
                        addr48:
                        return Boolean(§§pop());
                     }
                  }
               }
            }
            §§goto(addr48);
         }
         §§goto(addr44);
      }
      
      private function §_-en§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§_-sT§)
            {
               loop0:
               while(true)
               {
                  this.§_-sT§.removeEventListener(Event.COMPLETE,this.onComplete);
                  loop1:
                  while(true)
                  {
                     this.§_-sT§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     loop2:
                     for(; !_loc1_; if(!(_loc2_ || this))
                     {
                        continue;
                     },if(_loc1_ && _loc1_)
                     {
                        continue loop1;
                     },this.§_-sT§ = null,while(true)
                     {
                     })
                     {
                        this.§_-sT§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        while(true)
                        {
                           this.§_-sT§.close();
                           addr81:
                           while(_loc2_)
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§push(this.§_-0Ep§);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§push(false);
                           break;
                        }
                        continue;
                     }
                     if(_loc1_)
                     {
                        §§goto(addr81);
                     }
                  }
                  §§push(true);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
                  break;
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr76);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-sT§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§_-sT§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(!(_loc3_ && _loc3_))
               {
                  this.§_-sT§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  while(!(_loc3_ && this))
                  {
                     this.§_-MW§[this.§_-Di§] = this.§_-sT§.data;
                     loop3:
                     while(!_loc3_)
                     {
                        this.§_-sT§ = null;
                        do
                        {
                           if(_loc2_ || _loc2_)
                           {
                              continue;
                           }
                           continue loop3;
                        }
                        while(this.§_-E2§(this.§_-Di§,true), _loc3_ && param1);
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      private function §_-E2§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-0FF§ = null;
         if(_loc4_)
         {
            this.§_-0Ep§ = true;
            if(_loc4_)
            {
               addr26:
               this.§_-Di§ = param1;
            }
            while(this.§_-Mi§.length >= this.§_-HX§)
            {
               _loc3_ = this.§_-Mi§.pop();
               if(_loc4_)
               {
                  _loc3_.dispose();
               }
            }
            if(_loc4_ || param1)
            {
               §§push(this.§_-SF§);
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(this.§_-SF§);
                        if(!_loc5_)
                        {
                           addr84:
                           §§pop().dispose();
                           if(!(_loc5_ && this))
                           {
                              addr165:
                              this.§_-00g§ = new §_-0FF§(param1);
                              loop6:
                              while(true)
                              {
                                 this.§_-Mi§.unshift(this.§_-00g§);
                                 addr164:
                                 loop5:
                                 while(true)
                                 {
                                    this.§_-SF§ = new §_-ML§();
                                    addr153:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              addr92:
                           }
                           while(true)
                           {
                              §§push(this.§_-SF§);
                              while(true)
                              {
                                 §§pop().addEventListener(Event.COMPLETE,this.§_-Tq§);
                                 addr147:
                                 §§goto(addr107);
                              }
                           }
                        }
                        addr107:
                        while(true)
                        {
                           §§push(this.§_-SF§);
                           if(_loc4_ || _loc3_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        while(true)
                        {
                           §§pop().§_-Vt§(this.§_-MW§[this.§_-Di§],param2);
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                           if(_loc4_ || this)
                           {
                              break;
                           }
                           §§goto(addr153);
                        }
                        return;
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr165);
               }
               §§goto(addr84);
            }
            §§goto(addr92);
         }
         §§goto(addr26);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-sT§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§_-sT§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               addr39:
               if(_loc2_)
               {
                  continue;
               }
               return;
               addr51:
            }
         }
         while(true)
         {
            this.§_-sT§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            while(!(_loc2_ && _loc3_))
            {
               this.§_-sT§.close();
               do
               {
                  this.§_-sT§ = null;
                  do
                  {
                     this.§_-Di§ = null;
                     do
                     {
                        dispatchEvent(new Event(Event.CANCEL));
                     }
                     while(!_loc3_);
                     
                  }
                  while(_loc2_);
                  
               }
               while(!_loc3_);
               
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr39);
            }
         }
         §§goto(addr51);
      }
      
      private function §_-Tq§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§_-0Ep§ = false;
            loop0:
            while(true)
            {
               §§push(this.§_-SF§);
               if(_loc5_ && param1)
               {
                  break;
               }
               §§pop().removeEventListener(Event.COMPLETE,this.§_-Tq§);
               loop1:
               while(true)
               {
                  if(this.§_-07e§)
                  {
                     if(_loc4_)
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        this.§_-r7§(this.§_-07e§);
                     }
                     do
                     {
                        if(_loc4_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                     while(this.§_-07e§ = null, _loc5_);
                     
                     return;
                     addr36:
                  }
                  §§push(this.§_-SF§);
                  break loop0;
               }
            }
            §§push(§§pop().§_-07S§.§_-iE§);
            if(!_loc5_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  if(_loc4_)
                  {
                     if(!(_loc5_ && param1))
                     {
                        this.§_-G9§();
                     }
                     else
                     {
                        _loc3_++;
                        continue;
                        addr143:
                     }
                  }
                  if(_loc4_ || param1)
                  {
                     break;
                  }
                  continue;
               }
               this.§_-00g§.§_-sG§(this.§_-SF§.§_-07S§.§_-0Cv§(_loc3_));
               §§goto(addr143);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §_-G9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§_-Er§());
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop11:
                     while(true)
                     {
                        §§pop();
                        addr158:
                        loop3:
                        while(true)
                        {
                           addr118:
                           §§push(this.§_-SF§ == null);
                           addr130:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 break loop3;
                              }
                              continue loop11;
                           }
                           continue loop11;
                        }
                     }
                     addr157:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           break;
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 addr90:
                                 while(true)
                                 {
                                    §§push(this.§_-00g§.§_-G9§());
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr130);
                              }
                              addr144:
                           }
                           break;
                           addr52:
                           if(_loc2_ || _loc2_)
                           {
                              addr20:
                              return;
                           }
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr90);
                  }
                  return;
               }
            }
            §§goto(addr157);
         }
         §§goto(addr144);
      }
   }
}

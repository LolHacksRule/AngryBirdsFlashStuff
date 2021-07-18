package §=U§
{
   import §1j§.§1R§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §-b§ extends EventDispatcher
   {
       
      
      private var §&V§:String = "";
      
      private var §5D§:String;
      
      private var §2O§:URLLoader;
      
      private var §^L§:Dictionary;
      
      private var §7!f§:String = null;
      
      private var §+!s§:String = null;
      
      private var §3l§:String = null;
      
      private var §<#§:Boolean;
      
      private var §<^§:§1R§;
      
      private var §>!S§:§3p§;
      
      private var §+H§:Vector.<§3p§>;
      
      private var §&"§:String = "pak";
      
      private var §^D§:Boolean = true;
      
      private var §;!v§:int = 1;
      
      public function §-b§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.§^L§ = new Dictionary();
         if(!_loc5_)
         {
            this.§+H§ = new Vector.<§3p§>();
            super();
            this.§&V§ = param2;
         }
         this.§5D§ = param1;
         this.§^D§ = param3;
         this.§;!v§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §3p§
      {
         return this.§>!S§;
      }
      
      public function §<!s§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            if(!(_loc2_ && this))
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§^L§[param1] == null);
         if(!(_loc2_ && param1))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      private function §^O§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3p§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§+H§.length)
            {
               return false;
            }
            _loc3_ = this.§+H§[_loc2_];
            if(_loc5_ && this)
            {
               continue;
            }
            if(_loc3_.id == param1)
            {
               this.§>!S§ = _loc3_;
               this.§7!f§ = param1;
               if(_loc5_ && _loc2_)
               {
                  break;
               }
               this.§+H§.splice(_loc2_,1);
               this.§+H§.unshift(this.§>!S§);
               if(!(_loc5_ && _loc2_))
               {
                  break;
               }
               addr99:
               _loc2_++;
               continue;
            }
            §§goto(addr99);
         }
         return true;
      }
      
      public function §95§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop().toLowerCase());
            if(_loc3_)
            {
               param1 = §§pop();
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.§&`§());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        addr39:
                        if(!this.§=§())
                        {
                           this.§3l§ = param1;
                           if(_loc3_)
                           {
                              return;
                           }
                           addr84:
                           §§push(param1 == this.§7!f§);
                           if(!(param1 == this.§7!f§))
                           {
                              §§pop();
                              addr107:
                              if(_loc3_)
                              {
                                 addr103:
                                 §§push(!this.§^D§);
                              }
                              dispatchEvent(new Event(Event.COMPLETE));
                              if(!_loc3_)
                              {
                              }
                              addr131:
                              return;
                              addr127:
                           }
                        }
                        else
                        {
                           addr46:
                           §§push(this.§<!s§(param1));
                           if(_loc3_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    this.§^O§(param1);
                                    if(!(_loc2_ && this))
                                    {
                                       §§goto(addr84);
                                    }
                                    §§goto(addr103);
                                 }
                              }
                              else
                              {
                                 this.§3j§(param1);
                              }
                              §§goto(addr131);
                           }
                        }
                        if(§§pop())
                        {
                           §§goto(addr107);
                        }
                        else
                        {
                           this.§@!I§(param1,false);
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr127);
                           }
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr39);
               }
               §§goto(addr107);
            }
         }
         §§goto(addr84);
      }
      
      private function §3j§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = "";
         §§push(this.§&V§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() == null);
            if(_loc3_ || _loc2_)
            {
               §§push(!§§pop());
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc4_ && param1)
                     {
                     }
                     addr63:
                     if(§§pop())
                     {
                        §§goto(addr81);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr63);
               }
               §§pop();
               if(_loc3_)
               {
                  §§push(this.§&V§);
                  if(!_loc4_)
                  {
                     addr60:
                     §§goto(addr63);
                     §§push(§§pop().length > 0);
                  }
                  addr81:
                  §§push("?version=");
                  if(!_loc4_)
                  {
                     §§push(§§pop() + this.§&V§);
                  }
                  _loc2_ = §§pop();
                  if(_loc3_ || this)
                  {
                     addr89:
                     this.§+!s§ = param1;
                     if(_loc3_ || _loc2_)
                     {
                        this.§2O§ = new URLLoader();
                        this.§2O§.dataFormat = URLLoaderDataFormat.BINARY;
                        this.§2O§.addEventListener(Event.COMPLETE,this.onComplete);
                        if(_loc3_ || _loc2_)
                        {
                           this.§2O§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        }
                        §§goto(addr146);
                     }
                     this.§2O§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  }
                  §§goto(addr146);
               }
               addr146:
               this.§2O§.load(new URLRequest(this.§5D§ + "packages/" + param1 + "." + this.§&"§ + _loc2_));
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr60);
      }
      
      private function §&`§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Boolean(this.§2O§));
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr43:
                     §§push(this.§<#§);
                     if(!_loc2_)
                     {
                        addr47:
                        §§push(Boolean(§§pop()));
                     }
                  }
                  §§goto(addr47);
               }
               return §§pop();
            }
            §§goto(addr47);
         }
         §§goto(addr43);
      }
      
      private function §=§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§2O§)
            {
               if(!_loc1_)
               {
                  this.§2O§.removeEventListener(Event.COMPLETE,this.onComplete);
                  if(!_loc1_)
                  {
                     this.§2O§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     if(_loc2_ || _loc2_)
                     {
                        this.§2O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        this.§2O§.close();
                        if(_loc1_ && _loc1_)
                        {
                        }
                        §§goto(addr94);
                     }
                     this.§2O§ = null;
                     if(!(_loc1_ && _loc1_))
                     {
                        §§goto(addr94);
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr115);
            }
            addr94:
            §§push(this.§<#§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr106:
                     §§push(false);
                     if(_loc2_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr115:
                     §§push(true);
                  }
               }
               §§goto(addr115);
            }
            return §§pop();
         }
         §§goto(addr115);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§2O§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§2O§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§2O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(_loc3_)
         {
            this.§^L§[this.§+!s§] = this.§2O§.data;
            if(!_loc2_)
            {
               this.§2O§ = null;
            }
            this.§@!I§(this.§+!s§,true);
         }
      }
      
      private function §@!I§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3p§ = null;
         if(_loc5_)
         {
            this.§<#§ = true;
            if(_loc5_)
            {
               this.§+!s§ = param1;
            }
         }
         while(this.§+H§.length >= this.§;!v§)
         {
            _loc3_ = this.§+H§.pop();
            if(!_loc4_)
            {
               _loc3_.dispose();
            }
         }
         if(!(_loc4_ && param2))
         {
            §§push(this.§<^§);
            if(!(_loc4_ && param1))
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr76:
                     §§push(this.§<^§);
                     if(_loc5_ || this)
                     {
                        §§goto(addr85);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr130);
               }
               §§goto(addr93);
            }
            addr85:
            §§pop().dispose();
            if(_loc5_ || this)
            {
               addr93:
               this.§>!S§ = new §3p§(param1);
               this.§+H§.unshift(this.§>!S§);
            }
            this.§<^§ = new §1R§();
            if(_loc5_)
            {
               §§push(this.§<^§);
               if(!_loc4_)
               {
                  addr123:
                  §§pop().addEventListener(Event.COMPLETE,this.§@!v§);
                  §§goto(addr139);
               }
               §§pop().§83§(this.§^L§[this.§+!s§],param2);
            }
            addr139:
            if(_loc5_)
            {
               addr130:
               §§push(this.§<^§);
            }
            return;
         }
         §§goto(addr76);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2O§.removeEventListener(Event.COMPLETE,this.onComplete);
            if(!(_loc3_ && param1))
            {
               this.§2O§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               if(_loc2_ || this)
               {
                  this.§2O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  this.§2O§.close();
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr83);
                  }
               }
               §§goto(addr93);
            }
            addr83:
            this.§2O§ = null;
            if(!(_loc3_ && param1))
            {
               addr93:
               this.§+!s§ = null;
               dispatchEvent(new Event(Event.CANCEL));
            }
            return;
         }
         §§goto(addr93);
      }
      
      private function §@!v§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§<#§ = false;
            if(_loc4_)
            {
               §§goto(addr23);
            }
            §§goto(addr62);
         }
         addr23:
         §§push(this.§<^§);
         if(!(_loc5_ && _loc2_))
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§@!v§);
            if(this.§3l§)
            {
               this.§95§(this.§3l§);
               if(_loc4_)
               {
                  this.§3l§ = null;
                  if(!_loc5_)
                  {
                     return;
                  }
                  addr62:
                  §§push(this.§<^§);
               }
            }
            §§goto(addr62);
         }
         §§push(§§pop().§#!a§.§0!@§);
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
               if(!_loc5_)
               {
                  this.§[!>§();
                  break;
               }
               break;
            }
            this.§>!S§.§+t§(this.§<^§.§#!a§.§0g§(_loc3_));
            if(_loc4_)
            {
               _loc3_++;
               if(!_loc4_)
               {
                  break;
               }
            }
         }
      }
      
      public function §[!>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§&`§());
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc1_ || this)
                     {
                        addr39:
                        §§pop();
                        §§push(this.§<^§);
                        if(_loc1_)
                        {
                           §§push(§§pop() == null);
                           if(_loc1_ || this)
                           {
                              §§goto(addr63);
                           }
                           §§goto(addr77);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr77);
                  }
               }
               addr63:
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     return;
                  }
                  addr103:
                  this.§7!f§ = this.§+!s§;
                  if(!_loc2_)
                  {
                     this.§+!s§ = null;
                     if(_loc1_)
                     {
                        dispatchEvent(new Event(Event.COMPLETE));
                     }
                  }
               }
               else
               {
                  addr77:
                  if(this.§>!S§.§[!>§())
                  {
                     if(!(_loc2_ && this))
                     {
                        addr97:
                        this.§<^§.dispose();
                        if(_loc1_)
                        {
                           this.§<^§ = null;
                           §§goto(addr103);
                        }
                     }
                     §§goto(addr103);
                  }
               }
               return;
            }
            §§goto(addr39);
         }
         §§goto(addr103);
      }
   }
}

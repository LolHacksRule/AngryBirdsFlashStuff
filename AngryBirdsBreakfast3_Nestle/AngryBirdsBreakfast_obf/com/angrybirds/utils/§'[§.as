package com.angrybirds.utils
{
   import §,j§.§'u§;
   import §;V§.§%c§;
   import flash.net.SharedObject;
   
   public class §'[§
   {
      
      protected static const §<!O§:int = 365;
      
      protected static const §9]§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §<!O§ = 365;
         }
         do
         {
            §9]§ = [];
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public var data:Object;
      
      private var §[!l§:String = "";
      
      private var §;!<§:Boolean = false;
      
      private var §"O§:String = "";
      
      public function §'[§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§[!l§ = §'!P§.§7R§();
               addr77:
               while(!_loc2_)
               {
                  this.§"O§ = param1;
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push(§9]§.indexOf(this.§[!l§) == -1);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            §§pop().§;!<§ = §§pop();
            for(; _loc3_; this.§-m§(),if(_loc3_)
            {
               return;
            })
            {
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
      }
      
      public static function getLocal(param1:String) : §'[§
      {
         return new §'[§(param1);
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:SharedObject = null;
         if(_loc2_)
         {
            if(this.§;!<§)
            {
               if(!(_loc3_ && this))
               {
                  this.§2i§();
                  addr43:
               }
               §§goto(addr43);
            }
            else
            {
               _loc1_ = SharedObject.getLocal(this.§"O§);
               if(_loc2_)
               {
                  _loc1_.clear();
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function flush() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.data != null)
            {
               while(true)
               {
                  if(this.§;!<§)
                  {
                     if(_loc2_)
                     {
                        this.§"!%§();
                        break;
                     }
                     break;
                  }
                  this.§%!$§();
                  if(!(_loc2_ || _loc1_))
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr25);
               }
               addr75:
            }
            addr25:
            return;
         }
         §§goto(addr75);
      }
      
      private function §2i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §%c§.§6"§("deleteCookie",this.§"O§);
         }
      }
      
      private function §"!%§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§'u§.encode(this.data));
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §%c§.§6"§("storeCookie",this.§"O§,_loc1_,§<!O§);
         }
      }
      
      private function §%!$§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(null);
            if(!_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  addr32:
                  var i:String = null;
               }
               try
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc1_)
                  {
                     §§pop().§§slot[1] = SharedObject.getLocal(this.§"O§);
                     if(_loc4_ || _loc2_)
                     {
                        var _loc2_:int = 0;
                        if(!_loc5_)
                        {
                           var _loc3_:* = this.data;
                           if(_loc4_ || _loc2_)
                           {
                           }
                           while(§§hasnext(_loc3_,_loc2_))
                           {
                              §§push(§§newactivation());
                              if(_loc4_ || this)
                              {
                                 §§pop().§§slot[2] = §§nextname(_loc2_,_loc3_);
                                 if(_loc5_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(§§newactivation());
                              }
                              §§pop().§§slot[1].data[i] = this.data[i];
                           }
                        }
                        if(!_loc5_)
                        {
                           addr120:
                           mySO.flush();
                           addr119:
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr120);
               }
               catch(e:Error)
               {
               }
               addr146:
               return;
            }
         }
         §§goto(addr32);
      }
      
      private function §-m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§;!<§)
            {
               this.§?!-§();
               if(_loc1_ || _loc1_)
               {
                  if(!_loc1_)
                  {
                     addr61:
                     this.§&!t§();
                     addr63:
                  }
                  return;
               }
               §§goto(addr63);
            }
         }
         §§goto(addr61);
      }
      
      private function §?!-§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§"O§);
            if(!_loc4_)
            {
               this.data = mySO.data;
            }
         }
         catch(e:Error)
         {
            if(_loc3_)
            {
               data = new Object();
            }
         }
      }
      
      private function §&!t§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var returnObject:String = §%c§.§6"§("readCookie",this.§"O§);
         try
         {
            this.data = §'u§.§&!Z§(returnObject,false);
         }
         catch(e:Error)
         {
            if(!_loc3_)
            {
               data = new Object();
            }
         }
      }
   }
}

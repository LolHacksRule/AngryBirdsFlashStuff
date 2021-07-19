package §]0§
{
   import §;K§.§&s§;
   import §<G§.§2C§;
   import flash.net.SharedObject;
   
   public class §0b§
   {
      
      protected static const §'"§:int = 365;
      
      protected static const §@!u§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §0b§))
         {
            §'"§ = 365;
         }
         do
         {
            §@!u§ = [§9x§.CHROME];
         }
         while(!_loc1_);
         
      }
      
      public var data:Object;
      
      private var §0y§:String = "";
      
      private var §^J§:Boolean = false;
      
      private var §-!g§:String = "";
      
      public function §0b§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§0y§ = §9x§.§4!2§();
               loop1:
               for(; !_loc3_; if(_loc3_)
               {
                  continue;
               },§§goto(addr45))
               {
                  this.§-!g§ = param1;
                  while(true)
                  {
                     §§push(this);
                     §§push(§@!u§.indexOf(this.§0y§) == -1);
                     if(!_loc3_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§^J§ = §§pop();
                     loop3:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§^!Z§();
                           if(_loc2_ || _loc3_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public static function getLocal(param1:String) : §0b§
      {
         return new §0b§(param1);
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:SharedObject = null;
         if(!_loc3_)
         {
            if(this.§^J§)
            {
               if(_loc2_)
               {
                  this.§`!q§();
                  addr38:
               }
               §§goto(addr38);
            }
            else
            {
               _loc1_ = SharedObject.getLocal(this.§-!g§);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.clear();
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function flush() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.data != null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr74:
                  if(!this.§^J§)
                  {
                     this.§#G§();
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_)
                        {
                           §§goto(addr24);
                        }
                        else
                        {
                           addr77:
                           this.§09§();
                        }
                     }
                     §§goto(addr24);
                  }
               }
               §§goto(addr77);
            }
            addr24:
            return;
         }
         §§goto(addr74);
      }
      
      private function §`!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §2C§.§^!A§("deleteCookie",this.§-!g§);
         }
      }
      
      private function §09§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§&s§.encode(this.data));
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §2C§.§^!A§("storeCookie",this.§-!g§,_loc1_,§'"§);
         }
      }
      
      private function §#G§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && this))
         {
            §§push(null);
            if(_loc4_ || this)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_ || this)
               {
                  addr47:
                  var i:String = null;
               }
               try
               {
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     §§pop().§§slot[1] = SharedObject.getLocal(this.§-!g§);
                     if(!_loc5_)
                     {
                        var _loc2_:int = 0;
                        if(!(_loc5_ && this))
                        {
                           var _loc3_:* = this.data;
                           if(_loc5_ && _loc1_)
                           {
                           }
                           while(§§hasnext(_loc3_,_loc2_))
                           {
                              §§push(§§newactivation());
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§pop().§§slot[2] = §§nextname(_loc2_,_loc3_);
                                 if(_loc5_ && _loc1_)
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
                           addr130:
                           mySO.flush();
                           addr129:
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr130);
               }
               catch(e:Error)
               {
               }
               addr156:
               return;
            }
         }
         §§goto(addr47);
      }
      
      private function §^!Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!this.§^J§)
            {
               this.§8",§();
               if(_loc1_ || _loc1_)
               {
                  if(!_loc1_)
                  {
                     addr66:
                     this.§%]§();
                     addr68:
                  }
                  return;
               }
               §§goto(addr68);
            }
         }
         §§goto(addr66);
      }
      
      private function §8",§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§-!g§);
            if(!(_loc3_ && _loc2_))
            {
               this.data = mySO.data;
            }
         }
         catch(e:Error)
         {
            if(!(_loc3_ && _loc3_))
            {
               data = new Object();
            }
         }
      }
      
      private function §%]§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var returnObject:String = §2C§.§^!A§("readCookie",this.§-!g§);
         try
         {
            this.data = §&s§.§>7§(returnObject,false);
         }
         catch(e:Error)
         {
            if(_loc4_ || _loc3_)
            {
               data = new Object();
            }
         }
      }
   }
}

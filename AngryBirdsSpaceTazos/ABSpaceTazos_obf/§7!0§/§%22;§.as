package §7!0§
{
   import §,!3§.§#"C§;
   import §<"8§.§6!c§;
   import flash.net.SharedObject;
   
   public class §";§
   {
      
      protected static const §"!`§:int = 365;
      
      protected static const §'""§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"!`§ = 365;
         }
         do
         {
            §'""§ = [§`!_§.CHROME];
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public var data:Object;
      
      private var §+!@§:String = "";
      
      private var §^!M§:Boolean = false;
      
      private var §1"5§:String = "";
      
      public function §";§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         while(true)
         {
            this.§+!@§ = §`!_§.§@e§();
            loop1:
            while(!(_loc3_ && _loc2_))
            {
               this.§1"5§ = param1;
               loop2:
               while(true)
               {
                  §§push(this);
                  §§push(§'""§.indexOf(this.§+!@§) == -1);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§^!M§ = §§pop();
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public static function getLocal(param1:String) : §";§
      {
         return new §";§(param1);
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:SharedObject = null;
         if(!_loc2_)
         {
            if(this.§^!M§)
            {
               if(!_loc2_)
               {
                  addr37:
                  this.§6"8§();
               }
            }
            else
            {
               _loc1_ = SharedObject.getLocal(this.§1"5§);
               if(_loc3_ || _loc1_)
               {
                  _loc1_.clear();
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function flush() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.data != null)
            {
               if(!_loc1_)
               {
                  if(this.§^!M§)
                  {
                     if(!_loc1_)
                     {
                        this.§'!j§();
                        addr70:
                     }
                     §§goto(addr70);
                  }
                  else
                  {
                     this.§!!i§();
                     if(!(_loc2_ || this))
                     {
                        §§goto(addr70);
                     }
                  }
               }
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr70);
      }
      
      private function §6"8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §6!c§.§?!6§("deleteCookie",this.§1"5§);
         }
      }
      
      private function §'!j§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§#"C§.encode(this.data));
         if(_loc3_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §6!c§.§?!6§("storeCookie",this.§1"5§,_loc1_,§"!`§);
         }
      }
      
      private function §!!i§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_ || _loc1_)
         {
            §§push(null);
            if(_loc5_ || this)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc5_)
               {
                  addr43:
                  var i:String = null;
               }
               try
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc1_))
                  {
                     §§pop().§§slot[1] = SharedObject.getLocal(this.§1"5§);
                     if(_loc5_ || _loc3_)
                     {
                        var _loc2_:int = 0;
                        if(_loc5_)
                        {
                           var _loc3_:* = this.data;
                           if(_loc5_ || _loc2_)
                           {
                              loop0:
                              while(§§hasnext(_loc3_,_loc2_))
                              {
                                 §§push(§§newactivation());
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§pop().§§slot[2] = §§nextname(_loc2_,_loc3_);
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().§§slot[1].data[i] = this.data[i];
                                    continue loop0;
                                 }
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr126);
               }
               catch(e:Error)
               {
               }
               addr122:
               if(_loc5_)
               {
                  addr126:
                  mySO.flush();
                  addr125:
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      private function §8![§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!this.§^!M§)
            {
               this.§5c§();
               if(_loc2_)
               {
                  addr46:
               }
               else
               {
                  addr69:
               }
               return;
            }
            if(_loc2_ || _loc1_)
            {
               this.§9`§();
            }
            §§goto(addr69);
         }
         §§goto(addr46);
      }
      
      private function §5c§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§1"5§);
            if(_loc4_)
            {
               this.data = mySO.data;
            }
         }
         catch(e:Error)
         {
            if(!_loc3_)
            {
               data = new Object();
            }
         }
      }
      
      private function §9`§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var returnObject:String = §6!c§.§?!6§("readCookie",this.§1"5§);
         try
         {
            this.data = §#"C§.§+c§(returnObject,false);
         }
         catch(e:Error)
         {
            if(!(_loc4_ && _loc1_))
            {
               data = new Object();
            }
         }
      }
   }
}

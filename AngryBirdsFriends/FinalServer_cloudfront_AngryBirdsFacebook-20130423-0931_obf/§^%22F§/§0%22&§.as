package §^"F§
{
   import §9@§.§4Z§;
   
   public class §0"&§
   {
       
      
      private var §,^§:§4Z§;
      
      private var §5!U§:§4Z§;
      
      public function §0"&§(param1:Array, param2:Array)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         if(!(_loc6_ && _loc3_))
         {
            super();
            if(_loc7_ || _loc3_)
            {
               loop0:
               while(true)
               {
                  this.§,^§ = new §4Z§();
                  if(_loc6_ && _loc3_)
                  {
                     break;
                  }
                  addr54:
                  while(true)
                  {
                     this.§5!U§ = new §4Z§();
                     if(!(_loc6_ && this))
                     {
                        if(true)
                        {
                           if(param1)
                           {
                              break loop0;
                           }
                           if(param2)
                           {
                              if(_loc7_)
                              {
                                 var _loc4_:int = 0;
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    addr145:
                                    var _loc5_:* = param2;
                                    if(!_loc7_)
                                    {
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc5_,_loc4_));
                                       addr169:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             break loop2;
                                          }
                                          _loc3_ = §§nextvalue(_loc4_,_loc5_);
                                          if(_loc7_ || this)
                                          {
                                             this.§[!w§(_loc3_.toUpperCase());
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           addr122:
                        }
                        continue loop0;
                        return;
                     }
                     break loop0;
                  }
               }
            }
            _loc4_ = 0;
            _loc5_ = param1;
            while(true)
            {
               §§push(§§hasnext(_loc5_,_loc4_));
               if(_loc7_ || param2)
               {
                  if(§§pop())
                  {
                     _loc3_ = §§nextvalue(_loc4_,_loc5_);
                     if(_loc7_ || this)
                     {
                        this.§="#§(_loc3_.toUpperCase());
                     }
                     continue;
                  }
                  if(_loc7_)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        if(!_loc7_)
                        {
                        }
                        §§goto(addr122);
                     }
                  }
                  §§goto(addr145);
               }
               break;
            }
            §§goto(addr169);
         }
         §§goto(addr54);
      }
      
      public function get ownedBundles() : §4Z§
      {
         return this.§,^§;
      }
      
      public function get claimableBundles() : §4Z§
      {
         return this.§5!U§;
      }
      
      public function §="#§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,^§[param1] = param1;
         }
      }
      
      public function §[!w§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§5!U§[param1] = param1;
         }
      }
      
      public function §^!e§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§,^§[param1.toUpperCase()] == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §8k§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§5!U§[param1.toUpperCase()] == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
   }
}

package §3!7§
{
   import §<a§.§0!Y§;
   
   public class §,!_§
   {
       
      
      private var §0"+§:§0!Y§;
      
      private var §%N§:§0!Y§;
      
      public function §,!_§(param1:Array, param2:Array)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         if(!_loc6_)
         {
            super();
            if(_loc7_)
            {
               addr44:
               loop3:
               while(true)
               {
                  this.§0"+§ = new §0!Y§();
                  while(true)
                  {
                     this.§%N§ = new §0!Y§();
                     if(_loc6_)
                     {
                        break;
                     }
                     if(!_loc6_)
                     {
                        if(true)
                        {
                           if(param1)
                           {
                              break;
                           }
                           if(param2)
                           {
                              if(!_loc6_)
                              {
                                 addr116:
                                 var _loc4_:int = 0;
                                 if(_loc7_)
                                 {
                                    var _loc5_:* = param2;
                                    if(_loc6_)
                                    {
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc5_,_loc4_));
                                       addr139:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             break loop1;
                                          }
                                          _loc3_ = §§nextvalue(_loc4_,_loc5_);
                                          if(_loc7_)
                                          {
                                             this.§get §(_loc3_.toUpperCase());
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr140:
                                 }
                              }
                           }
                        }
                        else
                        {
                           addr102:
                        }
                        continue loop3;
                        return;
                     }
                  }
               }
            }
            _loc4_ = 0;
            _loc5_ = param1;
            while(true)
            {
               §§push(§§hasnext(_loc5_,_loc4_));
               if(!(_loc6_ && param1))
               {
                  if(§§pop())
                  {
                     _loc3_ = §§nextvalue(_loc4_,_loc5_);
                     if(!(_loc6_ && param2))
                     {
                        this.§=?§(_loc3_.toUpperCase());
                     }
                     continue;
                  }
                  if(!_loc6_)
                  {
                     if(!_loc6_)
                     {
                        if(_loc7_ || param1)
                        {
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr140);
               }
               break;
            }
            §§goto(addr139);
         }
         §§goto(addr44);
      }
      
      public function get ownedBundles() : §0!Y§
      {
         return this.§0"+§;
      }
      
      public function get claimableBundles() : §0!Y§
      {
         return this.§%N§;
      }
      
      public function §=?§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§0"+§[param1] = param1;
         }
      }
      
      public function §get §(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§%N§[param1] = param1;
         }
      }
      
      public function §2! §(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§0"+§[param1.toUpperCase()] == null);
         if(_loc2_ || _loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §7g§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§%N§[param1.toUpperCase()] == null);
         if(_loc3_)
         {
            return !§§pop();
         }
      }
   }
}

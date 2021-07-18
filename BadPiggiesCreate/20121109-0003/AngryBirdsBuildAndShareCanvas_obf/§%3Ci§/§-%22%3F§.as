package §<i§
{
   public class §-"?§ extends §'!e§
   {
       
      
      private var §-f§:§@!%§ = null;
      
      private var §3!S§:int = 0;
      
      public function §-"?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §!!B§() : §-"?§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§-"?§ = new §-"?§();
         if(_loc5_ || _loc2_)
         {
            _loc1_.§3!S§ = 0;
            loop0:
            while(true)
            {
               _loc1_.§-f§ = §@!%§.§[2§("");
               loop1:
               while(true)
               {
                  _loc1_.§-!9§ = false;
                  addr55:
                  if(_loc4_ && §-"?§)
                  {
                     continue;
                  }
                  _loc1_.mName = "DEFAULT THEME";
                  if(_loc5_ || _loc2_)
                  {
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     if(false)
                     {
                        loop3:
                        while(true)
                        {
                           _loc1_.theme = §>!=§;
                           addr48:
                           while(true)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§goto(addr55);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                                 addr67:
                              }
                           }
                           continue loop1;
                        }
                     }
                     var _loc2_:§+!S§ = new §+!S§();
                     if(_loc5_ || _loc1_)
                     {
                        _loc2_.bottom = 50;
                        while(true)
                        {
                           _loc2_.right = 50;
                        }
                        addr131:
                     }
                     loop6:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           _loc2_.id = "SLINGSHOT";
                           while(!_loc4_)
                           {
                              if(_loc5_)
                              {
                                 _loc1_.§ d§(_loc2_);
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    if(true)
                                    {
                                       break loop7;
                                    }
                                    continue loop7;
                                 }
                                 continue;
                              }
                              §§goto(addr131);
                           }
                           continue loop6;
                        }
                        var _loc3_:§+!S§ = new §+!S§();
                        if(_loc5_ || _loc3_)
                        {
                           _loc3_.bottom = 50;
                           loop9:
                           while(true)
                           {
                              _loc3_.right = 50;
                              while(true)
                              {
                                 _loc3_.id = "CASTLE";
                                 while(!(_loc4_ && _loc3_))
                                 {
                                    if(!_loc4_)
                                    {
                                       _loc1_.§ d§(_loc3_);
                                       if(!(_loc4_ && §-"?§))
                                       {
                                          return _loc1_;
                                          addr160:
                                       }
                                       continue;
                                       continue;
                                    }
                                    continue loop9;
                                 }
                              }
                           }
                        }
                        §§goto(addr160);
                     }
                  }
                  §§goto(addr48);
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function § !N§(param1:String) : §-"?§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§-"?§ = new §-"?§();
         if(_loc4_ || param1)
         {
            _loc3_.§[""§(param1);
            loop0:
            while(true)
            {
               if(_loc2_.rating)
               {
                  loop1:
                  while(true)
                  {
                     _loc3_.§3!S§ = _loc2_.rating;
                     loop2:
                     while(_loc4_)
                     {
                        while(true)
                        {
                           _loc3_.§-f§ = §@!%§.§,!W§(_loc2_);
                           if(_loc4_ || §-"?§)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                        return _loc3_;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr48);
            }
         }
         §§goto(addr68);
      }
      
      public function get §-C§() : §@!%§
      {
         return this.§-f§;
      }
      
      public function get §9e§() : int
      {
         return this.§3!S§;
      }
      
      public function set §9e§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§3!S§ = param1;
         }
      }
   }
}

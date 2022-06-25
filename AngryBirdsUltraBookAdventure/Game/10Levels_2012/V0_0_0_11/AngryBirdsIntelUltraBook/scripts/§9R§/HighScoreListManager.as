package §9R§
{
   public class HighScoreListManager
   {
       
      
      protected var §-3§:CachedFacebookFriends;
      
      protected var §]0§:Object;
      
      protected var §9<§:String;
      
      protected var §^+§:String;
      
      protected var §2'§:String;
      
      public function HighScoreListManager(serverRoot:String, userId:String, userName:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || serverRoot)
         {
         }
         if(!(_loc4_ && userId))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§]0§ = {};
                        addr142:
                        while(true)
                        {
                           while(true)
                           {
                              super();
                              addr125:
                              while(!_loc4_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                        addr58:
                        if(_loc4_ && serverRoot)
                        {
                           continue;
                        }
                        addr75:
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              addr44:
                              if(_loc5_ || this)
                              {
                                 return;
                                 addr97:
                              }
                              while(!_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 loop9:
                                 while(_loc5_)
                                 {
                                    while(true)
                                    {
                                       this.§^+§ = userId;
                                       addr83:
                                       while(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                this.§9<§ = serverRoot;
                                                addr56:
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   §§goto(addr58);
                                                   §§goto(addr75);
                                                }
                                                continue loop3;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr142);
                                          }
                                       }
                                       continue loop9;
                                    }
                                 }
                                 §§goto(addr125);
                                 §§goto(addr44);
                              }
                              continue loop2;
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr56);
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §-!V§() : CachedFacebookFriends
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            while(true)
            {
               §§push(this.§-3§);
               §§goto(addr100);
            }
            addr105:
         }
         while(true)
         {
            loop3:
            while(true)
            {
               this.§-3§ = new CachedFacebookFriends(this.§^+§,this.§2'§,this.§9<§ + "/fb/friends",true);
               while(true)
               {
                  if(_loc2_ && _loc1_)
                  {
                     continue loop3;
                  }
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr105);
               }
               addr100:
               while(true)
               {
                  if(§§pop())
                  {
                     continue;
                  }
               }
               return §§pop();
            }
         }
      }
      
      public function §2!$§(dataObject:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         do
         {
            do
            {
               this.§-3§ = new CachedFacebookFriends(this.§^+§,this.§2'§,this.§9<§ + "/fb/friends",true,dataObject);
               while(!(_loc2_ || this))
               {
               }
            }
            while(_loc3_ && this);
            
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function §>3§(episode:String, levelId:String, tournamentScores:Boolean = false) : CachedFacebookFriends
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(!(_loc5_ && this))
         {
            while(true)
            {
               loop1:
               while(!_loc5_)
               {
                  while(true)
                  {
                     addr78:
                     while(this.§]0§[levelId])
                     {
                     }
                     return this.§]0§[levelId] = new CachedFacebookFriends(this.§^+§,this.§2'§,this.§9<§ + "/getlevelscores/" + episode + "/" + levelId + "/" + tournamentScores.toString(),false);
                     addr66:
                     if(_loc6_ || episode)
                     {
                        if(!_loc5_)
                        {
                           return this.§]0§[levelId];
                           addr75:
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(_loc6_)
            {
               §§goto(addr66);
            }
            §§goto(addr78);
         }
         §§goto(addr75);
      }
      
      public function §7$§(levels:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || levelId)
         {
         }
         var levelId:String = null;
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc5_ || levelId)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr42);
            }
            §§goto(addr44);
         }
         loop4:
         for each(levelId in levels)
         {
            loop5:
            while(true)
            {
               loop6:
               while(true)
               {
                  if(!this.§]0§[levelId])
                  {
                     continue loop4;
                  }
                  if(!_loc5_)
                  {
                  }
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        this.§]0§[levelId] = null;
                        while(!(_loc5_ || this))
                        {
                        }
                        if(!(_loc6_ && this))
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              continue loop4;
                           }
                           continue loop5;
                        }
                        continue loop7;
                     }
                     continue loop6;
                  }
               }
            }
         }
         if(_loc6_)
         {
         }
      }
      
      public function §>!`§(levelId:String) : CachedFacebookFriends
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc3_ && this)
         {
         }
         while(!(_loc2_ || _loc2_))
         {
         }
         return this.§]0§[levelId];
      }
      
      public function get §"!J§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc1_ || _loc1_)
         {
            §§push(this.§-3§);
            while(true)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && this))
                  {
                     addr90:
                  }
                  break;
               }
               §§push(this.§-3§);
               if(_loc1_)
               {
                  §§push(§§pop().§"!J§);
                  if(!(_loc2_ && _loc1_))
                  {
                     return §§pop();
                  }
                  break;
               }
            }
            return §§pop();
         }
         §§goto(addr90);
      }
   }
}

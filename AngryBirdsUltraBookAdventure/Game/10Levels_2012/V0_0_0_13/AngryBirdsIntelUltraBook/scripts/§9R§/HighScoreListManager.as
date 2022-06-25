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
         if(_loc4_ && serverRoot)
         {
         }
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  continue loop0;
                  addr119:
                  if(_loc5_ || userName)
                  {
                     do
                     {
                        this.§^+§ = userId;
                        loop10:
                        while(true)
                        {
                           loop11:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 addr85:
                                 if(!(_loc4_ && userId))
                                 {
                                    this.§9<§ = serverRoot;
                                    while(_loc5_ || serverRoot)
                                    {
                                       if(!(_loc4_ && serverRoot))
                                       {
                                          continue loop11;
                                       }
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       super();
                                       while(true)
                                       {
                                          addr139:
                                          while(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                this.§2'§ = userName;
                                                break loop11;
                                             }
                                             addr155:
                                             while(true)
                                             {
                                                continue loop5;
                                             }
                                             break loop11;
                                          }
                                       }
                                    }
                                    addr63:
                                 }
                                 break;
                              }
                              continue loop10;
                           }
                           while(true)
                           {
                              if(_loc5_ || serverRoot)
                              {
                                 addr112:
                                 if(_loc5_ || this)
                                 {
                                    §§goto(addr119);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§]0§ = {};
                                       §§goto(addr155);
                                       §§goto(addr112);
                                    }
                                    addr158:
                                 }
                              }
                              §§goto(addr139);
                              §§goto(addr85);
                           }
                           continue loop1;
                        }
                     }
                     while(!(_loc5_ || userId));
                     
                     if(_loc5_)
                     {
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public function §-!V§() : CachedFacebookFriends
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               §§push(this.§-3§);
               §§goto(addr90);
            }
            addr95:
         }
         while(true)
         {
            this.§-3§ = new CachedFacebookFriends(this.§^+§,this.§2'§,this.§9<§ + "/fb/friends",true);
            while(_loc1_ || this)
            {
               if(_loc2_)
               {
                  continue;
               }
               if(_loc1_ || _loc1_)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr23);
                  }
                  else
                  {
                     §§goto(addr95);
                  }
                  return §§pop();
               }
               §§goto(addr92);
            }
         }
      }
      
      public function §2!$§(dataObject:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               this.§-3§ = new CachedFacebookFriends(this.§^+§,this.§2'§,this.§9<§ + "/fb/friends",true,dataObject);
               while(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §>3§(episode:String, levelId:String, tournamentScores:Boolean = false) : CachedFacebookFriends
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && this)
         {
         }
         if(_loc6_ || tournamentScores)
         {
         }
         while(this.§]0§[levelId])
         {
            if(!_loc5_)
            {
               return this.§]0§[levelId];
            }
         }
         return this.§]0§[levelId] = new CachedFacebookFriends(this.§^+§,this.§2'§,this.§9<§ + "/getlevelscores/" + episode + "/" + levelId + "/" + tournamentScores.toString(),false);
      }
      
      public function §7$§(levels:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
         }
         var levelId:String = null;
         if(_loc5_ || this)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!_loc5_)
               {
               }
               if(!_loc6_)
               {
                  if(true)
                  {
                     loop3:
                     for each(levelId in levels)
                     {
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              if(!this.§]0§[levelId])
                              {
                                 continue loop3;
                              }
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    addr92:
                                    while(true)
                                    {
                                       this.§]0§[levelId] = null;
                                       while(!_loc6_)
                                       {
                                          if(_loc5_ || levelId)
                                          {
                                             continue loop6;
                                          }
                                       }
                                       continue loop7;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                     if(!_loc5_)
                     {
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      public function §>!`§(levelId:String) : CachedFacebookFriends
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || levelId)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         while(_loc2_)
         {
         }
         return this.§]0§[levelId];
      }
      
      public function get §"!J§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(!(_loc1_ && this))
         {
            while(true)
            {
               §§push(this.§-3§);
            }
            addr99:
         }
         else
         {
            loop2:
            while(true)
            {
               §§push(this.§-3§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop().§"!J§);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  while(true)
                  {
                     if(§§pop() == null)
                     {
                        if(!(_loc1_ && this))
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr99);
                           }
                        }
                        break;
                     }
                     continue loop2;
                  }
                  addr85:
               }
               return §§pop();
            }
         }
         §§goto(addr85);
      }
   }
}

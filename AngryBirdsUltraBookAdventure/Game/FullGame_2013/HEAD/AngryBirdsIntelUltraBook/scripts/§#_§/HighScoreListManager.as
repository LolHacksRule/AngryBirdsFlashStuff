package §#_§
{
   public class HighScoreListManager
   {
       
      
      protected var §-^§:CachedFacebookFriends;
      
      protected var §#t§:Object;
      
      protected var § l§:String;
      
      protected var §`I§:String;
      
      protected var §3=§:String;
      
      public function HighScoreListManager(serverRoot:String, userId:String, userName:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && serverRoot)
         {
         }
         if(!_loc4_)
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
                     while(true)
                     {
                        this.§#t§ = {};
                        addr137:
                        while(true)
                        {
                           addr130:
                           while(_loc5_)
                           {
                           }
                           continue loop1;
                        }
                        loop9:
                        while(_loc5_ || this)
                        {
                           if(_loc4_)
                           {
                              continue loop2;
                           }
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              this.§`I§ = userId;
                              loop11:
                              for(; _loc5_; while(true)
                              {
                                 if(_loc5_ || userName)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    this.§ l§ = serverRoot;
                                    continue;
                                 }
                                 continue loop11;
                              },§§goto(addr130))
                              {
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 addr121:
                                 while(true)
                                 {
                                    this.§3=§ = userName;
                                    break loop11;
                                 }
                              }
                              continue loop9;
                              if(_loc4_ && this)
                              {
                                 continue;
                              }
                              §§goto(addr68);
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            super();
            §§goto(addr125);
         }
      }
      
      public function §^!F§() : CachedFacebookFriends
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(this.§-^§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     continue loop0;
                  }
                  addr23:
                  while(true)
                  {
                     §§push(this.§-^§);
                     if(_loc1_ || _loc1_)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               return §§pop();
            }
         }
         while(true)
         {
            §§goto(addr23);
         }
      }
      
      public function §"!9§(dataObject:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(!(_loc3_ && dataObject))
         {
            while(true)
            {
               while(_loc2_ || this)
               {
                  this.§-^§ = new CachedFacebookFriends(this.§`I§,this.§3=§,this.§ l§ + "/fb/friends",true,dataObject);
                  loop2:
                  while(_loc2_ || _loc2_)
                  {
                     while(_loc3_)
                     {
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §[4§(episode:String, levelId:String, tournamentScores:Boolean = false) : CachedFacebookFriends
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || tournamentScores)
         {
         }
         if(_loc6_)
         {
            loop0:
            do
            {
               while(this.§#t§[levelId])
               {
                  if(_loc6_ || this)
                  {
                  }
                  if(!(_loc5_ && episode))
                  {
                     continue loop0;
                  }
               }
               return this.§#t§[levelId] = new CachedFacebookFriends(this.§`I§,this.§3=§,this.§ l§ + "/getlevelscores/" + episode + "/" + levelId + "/" + tournamentScores.toString(),false);
            }
            while(_loc5_ && this);
            
         }
         return this.§#t§[levelId];
      }
      
      public function §"!?§(levels:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && levelId)
         {
         }
         var levelId:String = null;
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               addr43:
               while(true)
               {
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(!(_loc5_ && this))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr43);
         }
         loop4:
         for each(levelId in levels)
         {
            loop5:
            while(true)
            {
               do
               {
                  if(this.§#t§[levelId])
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop4;
               }
               while(_loc5_ && levelId);
               
               loop7:
               while(true)
               {
                  addr84:
                  while(true)
                  {
                     this.§#t§[levelId] = null;
                     continue loop7;
                  }
                  continue loop5;
               }
            }
         }
         if(!_loc6_)
         {
         }
      }
      
      public function §'!>§(levelId:String) : CachedFacebookFriends
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            while(!_loc3_)
            {
            }
         }
         return this.§#t§[levelId];
      }
      
      public function get §2!g§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            §§push(this.§-^§);
            while(true)
            {
               if(§§pop() == null)
               {
                  continue loop0;
               }
               §§push(this.§-^§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop().§2!g§);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
                  break;
               }
            }
            addr68:
            return §§pop();
         }
      }
   }
}

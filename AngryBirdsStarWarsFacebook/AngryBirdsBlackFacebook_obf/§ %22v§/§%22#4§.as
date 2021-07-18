package § "v§
{
   import §,!,§.§0!d§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   
   public final class §"#4§ extends §0!d§
   {
       
      
      private var §<"n§:MovieClip;
      
      private var §'!q§:Boolean;
      
      private var § S§:String;
      
      private var §8#-§:int;
      
      private var §0"9§:int;
      
      private var §+N§:int;
      
      private var §,"D§:int;
      
      private var §;"m§:int;
      
      private var §4"X§:Boolean;
      
      public function §"#4§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         while(true)
         {
            this.§<"n§ = new §5_§.§`"G§("PreviousResultBar")();
            while(!_loc1_)
            {
               addChild(this.§<"n§);
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.data = param1;
            while(true)
            {
               this.§!"1§();
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     this.§;f§();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §!"1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§%4§)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  if(!_loc1_)
                  {
                     if(§%4§.p)
                     {
                        addr112:
                        §§push(true);
                        if(_loc2_ || this)
                        {
                        }
                     }
                     else
                     {
                        §§push(false);
                     }
                     §§pop().§'!q§ = §§pop();
                     while(true)
                     {
                        this.§ S§ = "Tournament " + §%4§.i;
                        loop2:
                        while(_loc2_)
                        {
                           if(this.§'!q§)
                           {
                              loop3:
                              while(!_loc1_)
                              {
                                 this.§8#-§ = §%4§.r;
                                 loop4:
                                 while(true)
                                 {
                                    this.§0"9§ = §%4§.n;
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          this.§+N§ = §%4§.s;
                                          loop6:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                this.§,"D§ = §%4§.ms;
                                                loop7:
                                                do
                                                {
                                                   this.§;"m§ = §%4§.p;
                                                   while(!_loc1_)
                                                   {
                                                      this.§4"X§ = §%4§.thc;
                                                      if(_loc2_)
                                                      {
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                while(!_loc2_);
                                                
                                                if(!_loc1_)
                                                {
                                                   break loop4;
                                                }
                                                continue loop3;
                                             }
                                             continue loop5;
                                          }
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 return;
                              }
                              continue loop0;
                           }
                           §§goto(addr25);
                        }
                     }
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr25);
         }
         §§goto(addr93);
      }
      
      private function §;f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§<"n§.gotoAndStop(!!this.§'!q§ ? 1 : 2);
            while(true)
            {
               this.§@u§();
               addr183:
               if(!(_loc2_ && _loc1_))
               {
                  loop6:
                  while(true)
                  {
                     §§push(this.§'!q§);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           while(!(_loc2_ && _loc2_))
                           {
                              §§push(this.§4"X§);
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§<"n§.txtRank.text = "?";
                                    loop9:
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          TournamentResultsPopup.§6"A§(this.§<"n§.trophy,this.§8#-§);
                                          addr102:
                                          addr158:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr104:
                                                if(!(_loc1_ || this))
                                                {
                                                   break loop10;
                                                }
                                                this.§<"n§.txtStars.text = this.§+N§ + "/" + this.§,"D§;
                                                continue loop9;
                                             }
                                          }
                                          addr158:
                                          loop15:
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                continue loop10;
                                             }
                                             addr211:
                                             addr176:
                                             while(!(_loc2_ && this))
                                             {
                                                §§goto(addr183);
                                                continue loop15;
                                             }
                                             while(true)
                                             {
                                                this.§<"n§.tournamentName.txtTournamentShadow.text = this.§ S§;
                                                break loop10;
                                             }
                                          }
                                       }
                                       addr199:
                                       while(true)
                                       {
                                          this.§<"n§.tournamentName.mcBack.mask = this.§<"n§.tournamentName.txtTournament;
                                          §§goto(addr176);
                                          §§goto(addr104);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§<"n§.txtRank.text = this.§8#-§ + "/" + this.§0"9§;
                                    §§goto(addr158);
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!this.§ S§)
                              {
                                 continue loop6;
                              }
                              §§goto(addr204);
                              §§goto(addr137);
                           }
                           addr137:
                           addr215:
                        }
                        break;
                     }
                     §§goto(addr146);
                  }
                  return;
               }
            }
         }
         §§goto(addr215);
      }
      
      private function §@u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§'!q§)
            {
               this.§<"n§.txtDidNotCompete.mouseEnabled = false;
               if(!_loc1_)
               {
                  if(_loc2_ || this)
                  {
                     if(!_loc1_)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              loop0:
                              while(true)
                              {
                                 this.§<"n§.tournamentName.mcBack.mouseEnabled = false;
                                 addr128:
                                 while(true)
                                 {
                                    this.§<"n§.txtRank.mouseEnabled = false;
                                    addr113:
                                    while(true)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          this.§<"n§.txtStars.mouseEnabled = false;
                                          loop3:
                                          while(true)
                                          {
                                             this.§<"n§.txtScores.mouseEnabled = false;
                                             loop4:
                                             while(true)
                                             {
                                                this.§<"n§.trophy.mouseEnabled = false;
                                                addr68:
                                                while(true)
                                                {
                                                   if(!(_loc1_ && this))
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§<"n§.tournamentName.txtTournament.mouseEnabled = false;
                                             continue loop0;
                                          }
                                          addr150:
                                       }
                                    }
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr68);
               }
               §§goto(addr59);
            }
            §§goto(addr150);
         }
         §§goto(addr92);
      }
   }
}

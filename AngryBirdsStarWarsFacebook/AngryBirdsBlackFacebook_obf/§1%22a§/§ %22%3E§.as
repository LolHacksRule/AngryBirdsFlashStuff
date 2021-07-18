package §1"a§
{
   import §"k§.§4#G§;
   import com.rovio.assets.§5_§;
   
   public class § ">§ extends §"!w§
   {
       
      
      public function § ">§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.init();
         }
         do
         {
            super();
         }
         while(!_loc2_);
         
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            var _loc1_:*;
            §5!-§ = _loc1_ = new §5_§.§`"G§("com.angrybirds.friendsbar.TournamentTotalScorePlateAsset")();
            addChild(_loc1_);
            if(_loc2_)
            {
               §5!-§.mcCrown.stop();
            }
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(data)
            {
               loop0:
               while(true)
               {
                  super.update();
                  while(true)
                  {
                     §5!-§.gotoAndStop(!!§?r§ ? 2 : 1);
                     loop2:
                     while(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           §<"9§();
                           for(; _loc1_; loop4:
                           while(!(_loc2_ && _loc2_))
                           {
                              §5!-§.txtScore.text = §@#F§(this.§;#P§.§]"q§) || "0";
                              loop5:
                              do
                              {
                                 if(_loc1_ || this)
                                 {
                                    if(this.§;#P§.§9!<§ > 3)
                                    {
                                       §5!-§.mcCrown.visible = false;
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §5!-§.txtRank.visible = true;
                                             while(!_loc2_)
                                             {
                                                if(_loc2_ && this)
                                                {
                                                   break loop6;
                                                }
                                                §5!-§.txtRank.text = this.§;#P§.§9!<§.toString() || "";
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   continue loop6;
                                                }
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop2;
                                    }
                                    §5!-§.mcCrown.visible = true;
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                              while(!(_loc1_ || _loc2_));
                              
                              §§goto(addr19);
                           })
                           {
                              §§push(§§findproperty(§^"d§));
                              if(!_loc2_)
                              {
                                 §§push(this.§;#P§.userName);
                                 if(_loc1_)
                                 {
                                    §§pop().§^"d§(§§pop() || "");
                                    continue;
                                 }
                              }
                              §§goto(addr163);
                           }
                           continue loop0;
                        }
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        §5!-§.txtRank.visible = false;
                        §§goto(addr109);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr93);
      }
      
      private function get §;#P§() : §4#G§
      {
         return §4#G§(data);
      }
   }
}

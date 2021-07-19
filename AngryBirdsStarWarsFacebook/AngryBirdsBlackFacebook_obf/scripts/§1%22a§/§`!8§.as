package §1"a§
{
   import §"k§.§-!i§;
   import com.rovio.assets.§5_§;
   
   public class §`!8§ extends §"!w§
   {
       
      
      public function §`!8§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.init();
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            addChild(§5!-§ = new §5_§.§`"G§("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
            if(!(_loc3_ && _loc1_))
            {
               §5!-§.mcCrown.stop();
            }
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(data)
            {
               while(true)
               {
                  super.update();
                  while(true)
                  {
                     §5!-§.gotoAndStop(!!§?r§ ? 2 : 1);
                     §§goto(addr235);
                  }
               }
            }
            §§goto(addr242);
         }
         addr235:
         do
         {
            §<"9§();
            loop3:
            while(true)
            {
               §§push(§§findproperty(§^"d§));
               if(_loc1_)
               {
                  §§push(this.§+"3§.userName);
                  if(!_loc2_)
                  {
                     §§pop().§^"d§(§§pop() || "");
                     loop4:
                     while(true)
                     {
                        §5!-§.txtFeathers.text = this.§+"3§.§0#!§.toString() || "0";
                        loop5:
                        while(true)
                        {
                           §5!-§.txtStars.text = this.§+"3§.§[!F§.toString() || "0";
                           while(true)
                           {
                              if(_loc2_ && _loc2_)
                              {
                                 break loop4;
                              }
                              if(this.§+"3§.§9!<§ > 3)
                              {
                                 §5!-§.mcCrown.visible = false;
                                 loop7:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    if(!(_loc1_ || _loc2_))
                                    {
                                       return;
                                    }
                                    addr242:
                                    §5!-§.txtRank.visible = true;
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(!(_loc1_ || _loc1_))
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop7;
                                    }
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          §5!-§.mcCrown.gotoAndStop(this.§+"3§.§9!<§);
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr24);
                              }
                              §§goto(addr137);
                              if(_loc2_ && _loc1_)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 break loop5;
                              }
                              if(_loc2_ && _loc2_)
                              {
                                 break;
                              }
                              §5!-§.txtRank.visible = false;
                              §§goto(addr126);
                           }
                           continue loop1;
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr207);
            }
         }
         while(_loc2_ && _loc1_);
         
         addr24:
      }
      
      private function get §+"3§() : §-!i§
      {
         return §-!i§(data);
      }
   }
}

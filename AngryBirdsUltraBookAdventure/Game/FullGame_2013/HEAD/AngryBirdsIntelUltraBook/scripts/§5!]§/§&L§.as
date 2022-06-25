package §5!]§
{
   import §"!i§.UserTotalScoreVO;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §&L§ extends BasePlate
   {
       
      
      private var §&!K§:OverallIntelScorePlateGFX;
      
      public function §&L§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  while(_loc2_)
                  {
                     if(_loc2_)
                     {
                        this.init();
                        while(!_loc1_)
                        {
                           if(_loc2_ || this)
                           {
                              return;
                              addr62:
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      private static function §6c§(number:*, maxDecimals:int = 2, forceDecimals:Boolean = false, siStyle:Boolean = false) : String
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc13_)
         {
         }
         var j:int = 0;
         if(_loc14_ || maxDecimals)
         {
            loop0:
            while(true)
            {
               addr101:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr68);
         }
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            if(_loc2_)
            {
               addChild(this.§&!K§ = new OverallIntelScorePlateGFX());
               §§goto(addr30);
            }
            §§goto(addr68);
         }
         addr30:
         if(!(_loc3_ && _loc1_))
         {
            do
            {
               this.§&!K§.§9,§.autoSize = TextFieldAutoSize.LEFT;
               while(_loc3_)
               {
               }
            }
            while(_loc3_ && _loc2_);
            
            addr68:
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               if(data)
               {
                  while(true)
                  {
                     §§push(this.§&!K§);
                     addr194:
                     while(true)
                     {
                        if(§6!D§)
                        {
                           addr197:
                           loop6:
                           while(true)
                           {
                              §§push(2);
                              if(_loc1_ || _loc2_)
                              {
                                 §§push(§§pop());
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    continue loop6;
                                 }
                                 addr208:
                              }
                              while(true)
                              {
                                 §§pop().gotoAndStop(§§pop());
                                 §§goto(addr221);
                              }
                           }
                           addr197:
                        }
                        else
                        {
                           §§push(1);
                        }
                        §§goto(addr208);
                     }
                  }
               }
               §§goto(addr246);
            }
         }
         while(true)
         {
            while(true)
            {
               §-2§();
               loop9:
               for(; !(_loc2_ && _loc2_); while(_loc1_ || _loc2_)
               {
                  loop13:
                  for(; !(_loc2_ && _loc1_); while(true)
                  {
                     if(!(_loc1_ || _loc2_))
                     {
                        continue loop13;
                     }
                     §§goto(addr95);
                     §§goto(addr48);
                  },§§goto(addr197))
                  {
                     §§push(this.§&!K§);
                     loop14:
                     while(true)
                     {
                        §§pop().§!H§.text = this.§=! §.totalScore.toString() || "0";
                        continue loop13;
                        addr95:
                        while(true)
                        {
                           §§push(this.§&!K§);
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              if(_loc1_ || this)
                              {
                                 §§pop().§9,§.text = this.§=! §.starCount.toString() || "0";
                                 do
                                 {
                                    if(_loc1_)
                                    {
                                       continue;
                                    }
                                 }
                                 while(_loc2_);
                                 
                                 continue;
                              }
                              §§goto(addr197);
                              addr247:
                           }
                           continue loop14;
                           while(true)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 addr246:
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           return;
                        }
                        §§goto(addr143);
                     }
                  }
               })
               {
                  while(_loc1_)
                  {
                     §§push(this.§&!K§);
                     while(_loc1_ || _loc1_)
                     {
                        §§pop().§!'§.text = this.§=! §.userName || "";
                        continue loop9;
                     }
                     §§goto(addr194);
                  }
                  addr221:
                  §§goto(addr247);
               }
            }
         }
      }
      
      public function get §=! §() : UserTotalScoreVO
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return UserTotalScoreVO(data);
      }
   }
}

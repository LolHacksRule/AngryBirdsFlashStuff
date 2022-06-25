package §#r§
{
   import §<!=§.UserTotalScoreVO;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §"!;§ extends BasePlate
   {
       
      
      private var §[!8§:OverallIntelScorePlateGFX;
      
      public function §"!;§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               super();
               addr57:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               return;
               addr74:
            }
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               this.init();
               while(true)
               {
                  if(_loc2_ || this)
                  {
                     continue loop1;
                  }
                  continue loop2;
                  addr93:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr57);
               }
               continue loop1;
            }
         }
         §§goto(addr74);
      }
      
      private static function §@E§(number:*, maxDecimals:int = 2, forceDecimals:Boolean = false, siStyle:Boolean = false) : String
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc14_)
         {
         }
         var j:int = 0;
         if(!(_loc13_ && forceDecimals))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  addr113:
                  while(true)
                  {
                     addr101:
                     continue loop1;
                  }
               }
               while(_loc14_ || forceDecimals)
               {
                  if(_loc13_ && §"!;§)
                  {
                     continue;
                  }
                  §§goto(addr40);
               }
            }
         }
         while(true)
         {
            §§goto(addr100);
         }
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            if(_loc2_ || _loc1_)
            {
               addChild(this.§[!8§ = new OverallIntelScorePlateGFX());
               if(_loc2_)
               {
                  loop0:
                  while(true)
                  {
                     this.§[!8§.§=!F§.autoSize = TextFieldAutoSize.LEFT;
                     addr83:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr74);
                  }
                  addr63:
               }
               addr74:
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr83);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(data)
            {
               loop1:
               while(true)
               {
                  §§push(this.§[!8§);
                  if(_loc1_ || _loc1_)
                  {
                     if(!§`![§)
                     {
                        §§push(1);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           addr211:
                           addr189:
                           while(true)
                           {
                              §§pop().gotoAndStop(§§pop());
                              while(!(_loc2_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    §]C§();
                                    while(true)
                                    {
                                       addr159:
                                       while(!(_loc2_ && _loc1_))
                                       {
                                          §§push(this.§[!8§);
                                          while(true)
                                          {
                                             §§pop().§@I§.text = this.§4m§.userName || "";
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              §§push(2);
                              if(_loc2_ && this)
                              {
                                 continue loop2;
                              }
                              §§goto(addr211);
                              §§push(§§pop());
                           }
                        }
                     }
                  }
                  §§goto(addr189);
               }
            }
            §§goto(addr232);
         }
         §§goto(addr156);
      }
      
      public function get §4m§() : UserTotalScoreVO
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return UserTotalScoreVO(data);
      }
   }
}

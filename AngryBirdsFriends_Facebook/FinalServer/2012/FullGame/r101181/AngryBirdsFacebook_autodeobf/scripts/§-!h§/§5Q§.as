package §-!h§
{
   import §-!+§.§;!B§;
   
   public class §5Q§ extends §;!B§
   {
       
      
      private var mPlayer1:§ ?§;
      
      private var mPlayer2:§ ?§;
      
      public function §5Q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.mPlayer1 = new § ?§();
               loop1:
               while(true)
               {
                  this.mPlayer2 = new § ?§();
                  while(_loc2_)
                  {
                     addChild(this.mPlayer1);
                     loop3:
                     while(_loc2_)
                     {
                        addChild(this.mPlayer2);
                        while(true)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr46);
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1)
            {
               do
               {
                  this.mPlayer1.data = param1[0];
                  do
                  {
                     this.mPlayer2.data = param1[1];
                  }
                  while(!(_loc3_ || _loc2_));
                  
               }
               while(!(_loc3_ || this));
               
               addr70:
            }
            return;
         }
         §§goto(addr70);
      }
   }
}

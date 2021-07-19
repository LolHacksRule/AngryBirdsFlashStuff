package §+!!§
{
   import §,!,§.§0!d§;
   
   public class §6#7§ extends §0!d§
   {
       
      
      private var mRenderer1:§&"l§;
      
      private var mRenderer2:§&"l§;
      
      public function §6#7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.mRenderer1 = new §&"l§();
               while(true)
               {
                  this.mRenderer2 = new §&"l§();
                  addr38:
                  if(!(_loc1_ && this))
                  {
                     if(_loc2_)
                     {
                        return;
                        addr57:
                     }
                     continue loop0;
                  }
               }
            }
         }
         loop2:
         while(true)
         {
            addChild(this.mRenderer1);
            while(true)
            {
               addChild(this.mRenderer2);
               while(_loc2_)
               {
                  this.mRenderer2.x = 300;
                  if(!_loc1_)
                  {
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1)
            {
               do
               {
                  §§push(this.mRenderer1);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§pop().data = param1.length > 0 ? param1[0] : null;
                     do
                     {
                        §§push(this.mRenderer2);
                        if(!_loc2_)
                        {
                           if(param1.length <= 1)
                           {
                              §§push(null);
                              continue;
                           }
                        }
                     }
                     while(§§pop().data = §§pop(), !_loc3_);
                     
                     continue;
                  }
                  §§goto(addr88);
               }
               while(_loc2_ && _loc3_);
               
               addr64:
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function get height() : Number
      {
         return 34;
      }
   }
}

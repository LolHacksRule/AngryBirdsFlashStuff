package §2!o§
{
   import §5!Y§.§9"6§;
   import com.angrybirds.friendsbar.ButtonBirdbotInfo;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §4n§
   {
       
      
      public var §<!6§:Sprite;
      
      private var §^Y§:ButtonBirdbotInfo;
      
      public function §4n§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§<!6§ = new Sprite();
            loop1:
            while(true)
            {
               this.§^Y§ = new ButtonBirdbotInfo();
               loop2:
               while(_loc2_)
               {
                  this.§<!6§.addChild(this.§^Y§);
                  while(!_loc1_)
                  {
                     this.§<!6§.addEventListener(MouseEvent.CLICK,this.§[!o§,false,0,true);
                     if(_loc2_)
                     {
                        if(!(_loc1_ && this))
                        {
                           return;
                        }
                        continue loop2;
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private function §[!o§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §9"6§.§4"4§();
         }
      }
      
      public function get §`"P§() : ButtonBirdbotInfo
      {
         return this.§^Y§;
      }
   }
}

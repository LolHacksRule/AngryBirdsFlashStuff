package §8!E§
{
   import §+D§.§ #^§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §#k§
   {
       
      
      protected var §=#=§:§ #^§;
      
      protected var §?;§:MovieClip;
      
      protected var §=#F§:TextField;
      
      public function §#k§(param1:§ #^§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
         do
         {
            this.init(param1);
         }
         while(_loc2_);
         
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§=#=§.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         return this.§=#=§.visible;
      }
      
      protected function init(param1:§ #^§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§=#=§ = param1;
            while(true)
            {
               this.§?;§ = MovieClip(this.§=#=§.getItemByName("MovieClip_FalconFill").mClip.falconMask);
            }
            addr109:
         }
         loop1:
         while(true)
         {
            this.§=#F§ = TextField(this.§=#=§.getItemByName("TextField_EaglePercentage").mClip.text);
            while(true)
            {
               this.updateScore(0);
               continue loop1;
               addr40:
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               if(_loc3_)
               {
                  break loop1;
               }
               §§goto(addr109);
            }
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function updateScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?;§.scaleX = param1 / 100;
         }
      }
      
      public function §="r§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=#F§.text = int(param1) + "%";
         }
      }
   }
}

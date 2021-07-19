package §+!!§
{
   import §,!,§.§0!d§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §5-§ extends §0!d§
   {
       
      
      private var mAsset:MovieClip;
      
      public function §5-§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         while(true)
         {
            this.mAsset = new §5_§.§`"G§("SendTypeItemRendererAsset")();
            while(_loc2_ || this)
            {
               addChild(this.mAsset);
               loop2:
               while(true)
               {
                  this.mAsset.stop();
                  do
                  {
                     mouseChildren = false;
                     continue loop2;
                  }
                  while(_loc1_ && this);
                  
                  return;
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.data = param1;
            while(true)
            {
               this.mAsset.gotoAndStop(1);
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(data)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     addr48:
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     this.mAsset.txtLabel.text = this.§>"`§.§=§;
                     §§goto(addr48);
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §!!§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mAsset.gotoAndStop(2);
         }
         do
         {
            this.mAsset.txtLabel.text = this.§>"`§.§=§;
         }
         while(_loc2_ && param1);
         
      }
      
      private function §3"§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mAsset.gotoAndStop(1);
            do
            {
               this.mAsset.txtLabel.text = this.§>"`§.§=§;
            }
            while(_loc2_);
            
         }
      }
      
      public function get §>"`§() : §<"`§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!data)
            {
               if(!(_loc2_ && this))
               {
                  §§goto(addr52);
               }
            }
            return §<"`§(data);
         }
         addr52:
         return null;
      }
   }
}

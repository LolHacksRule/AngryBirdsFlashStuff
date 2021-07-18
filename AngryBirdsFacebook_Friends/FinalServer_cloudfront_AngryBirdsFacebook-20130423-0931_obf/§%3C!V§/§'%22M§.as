package §<!V§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.LoaderContext;
   
   public class §'"M§ extends Sprite
   {
      
      public static const §^"8§:Number = 0.75;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^"8§ = 0.75;
         }
      }
      
      private var §9!Q§:Bitmap;
      
      private var §5"3§:BitmapData;
      
      private var §9"I§:String;
      
      public function §'"M§(param1:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super();
            while(true)
            {
               this.§9"I§ = param1;
               if(!(_loc4_ && param1))
               {
                  loop1:
                  while(true)
                  {
                     addEventListener(MouseEvent.CLICK,this.§[!o§);
                     while(true)
                     {
                        buttonMode = true;
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue;
               }
            }
         }
         §§goto(addr95);
      }
      
      public function get link() : String
      {
         return this.§9"I§;
      }
      
      public function § in§(param1:String) : Loader
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         if(_loc5_ || _loc3_)
         {
            _loc4_.load(_loc2_,_loc3_);
         }
         return _loc4_;
      }
      
      private function §[!o§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §%"S§.§!C§.§^X§();
         }
         var _loc2_:URLRequest = new URLRequest(this.§9"I§);
         if(_loc3_)
         {
            navigateToURL(_loc2_,"_blank");
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Bitmap = (param1.currentTarget as LoaderInfo).content as Bitmap;
         if(!_loc4_)
         {
            this.§5"3§ = _loc2_.bitmapData.clone();
         }
         do
         {
            this.§1!H§(this.§5"3§);
         }
         while(!_loc3_);
         
      }
      
      public function §%!h§() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§5"3§)
            {
               if(_loc1_)
               {
                  addr23:
                  this.§1!H§(this.§5"3§);
               }
            }
            return this.§5"3§;
         }
         §§goto(addr23);
      }
      
      public function §1!H§(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         if(!_loc3_)
         {
            _loc2_.width = §"!j§.§,<§;
            while(true)
            {
               _loc2_.height = §"!j§.§;!+§;
               loop1:
               while(_loc4_ || _loc2_)
               {
                  while(true)
                  {
                     addChild(_loc2_);
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
   }
}

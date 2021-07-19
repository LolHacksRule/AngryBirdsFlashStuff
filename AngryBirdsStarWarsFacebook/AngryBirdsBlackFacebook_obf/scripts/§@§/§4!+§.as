package §@§#4
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.LoaderContext;
   
   public class §4!+§ extends Sprite
   {
       
      
      private var §!#%§:BitmapData;
      
      private var §5"1§:String;
      
      private var §&"K§:Loader;
      
      private var § !R§:Number = 0;
      
      private var §!#2§:Number = 0;
      
      public function §4!+§(param1:String, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.§ !R§ = param3;
               addr105:
               while(true)
               {
                  this.§!#2§ = param2;
                  addr71:
                  if(!(_loc5_ && this))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§5"1§ = param1;
            §§goto(addr64);
         }
      }
      
      public function get link() : String
      {
         return this.§5"1§;
      }
      
      public function §3#E§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         if(_loc4_)
         {
            this.§2!q§();
         }
         do
         {
            this.§&"K§ = new Loader();
            loop1:
            do
            {
               this.§&"K§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
               while(true)
               {
                  this.§&"K§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
                  while(_loc4_)
                  {
                     this.§&"K§.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!k§);
                     while(!(_loc5_ && _loc3_))
                     {
                        this.§&"K§.load(_loc2_,_loc3_);
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
            while(_loc5_);
            
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§!#%§)
            {
               loop0:
               while(true)
               {
                  this.§!#%§.dispose();
                  addr94:
                  while(true)
                  {
                     this.§!#%§ = null;
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               removeEventListener(MouseEvent.CLICK,this.§^!R§);
               §§goto(addr51);
            }
         }
         §§goto(addr87);
      }
      
      protected function §2!q§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§&"K§)
            {
               try
               {
                  addr21:
                  this.§&"K§.close();
                  if(!(_loc3_ && _loc1_))
                  {
                     this.§&"K§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
                     §§goto(addr43);
                  }
                  §§goto(addr63);
               }
               catch(e:Error)
               {
               }
               addr43:
               if(!_loc3_)
               {
                  this.§&"K§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
                  while(true)
                  {
                     this.§&"K§.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!k§);
                     §§goto(addr96);
                  }
                  addr63:
               }
               addr96:
               §§goto(addr65);
            }
            addr65:
            while(true)
            {
               this.§&"K§ = null;
               if(_loc2_ || this)
               {
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr21);
      }
      
      private function §^!R§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §4#;§.singleton.§<#'§();
         }
         var _loc2_:URLRequest = new URLRequest(this.§5"1§);
         if(!_loc3_)
         {
            navigateToURL(_loc2_,"_blank");
         }
      }
      
      private function §9!k§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function §=!'§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(param1.clone());
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Bitmap = (param1.currentTarget as LoaderInfo).content as Bitmap;
         if(_loc3_ || _loc3_)
         {
            this.§!#%§ = _loc2_.bitmapData.clone();
            while(true)
            {
               this.§2#N§(this.§!#%§);
               while(_loc3_)
               {
                  dispatchEvent(param1.clone());
                  if(_loc3_)
                  {
                     return;
                     addr54:
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §#!i§() : BitmapData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§!#%§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr54:
                  this.§2#N§(this.§!#%§);
               }
            }
            return this.§!#%§;
         }
         §§goto(addr54);
      }
      
      public function §2#N§(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         if(!(_loc3_ && param1))
         {
            _loc2_.width = this.§!#2§;
         }
         while(true)
         {
            _loc2_.height = this.§ !R§;
            while(_loc4_)
            {
               addChild(_loc2_);
               if(_loc4_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}

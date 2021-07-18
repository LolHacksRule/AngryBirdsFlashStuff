package §[v§
{
   import §`W§.§<r§;
   import flash.text.TextField;
   
   public class §'4§ extends §<r§
   {
       
      
      public var §8?§:TextField;
      
      public function §'4§(param1:XML, param2:§&F§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super(param1,param2);
         loop0:
         do
         {
            this.§8?§ = mClip.getChildByName("text") as TextField;
            if(param1.@text)
            {
               if(!_loc3_)
               {
                  this.setText(param1.@text);
               }
               while(true)
               {
                  addr49:
                  this.§8?§.tabIndex = param1.@tabIndex;
                  if(_loc4_ || param1)
                  {
                     addr22:
                     if(mClip.mouseEnabled)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               addr82:
            }
            while(true)
            {
               if(param1.@tabIndex)
               {
                  §§goto(addr49);
               }
               break;
               §§goto(addr82);
            }
            §§goto(addr22);
         }
         while(if(!_loc3_)
         {
            this.setEnabled(mClip.mouseEnabled);
         }, _loc3_);
         
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setEnabled(param1);
            while(this.§8?§)
            {
               if(_loc3_)
               {
                  this.§8?§.mouseEnabled = mClip.mouseEnabled;
               }
               if(_loc3_ || _loc3_)
               {
                  addr52:
                  break;
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§8?§.text = param1;
         }
      }
      
      public function §&!>§() : String
      {
         return this.§8?§.text;
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
         }
         do
         {
            this.§8?§ = null;
         }
         while(_loc1_);
         
      }
   }
}

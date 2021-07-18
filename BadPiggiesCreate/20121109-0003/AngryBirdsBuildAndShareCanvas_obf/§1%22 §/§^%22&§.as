package §1" §
{
   import §,!g§.§>7§;
   import §]§.§`!7§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §^"&§ extends §`!7§ implements §4!x§
   {
       
      
      private var §,<§:Point;
      
      private var §9J§:§#!j§;
      
      public function §^"&§(param1:§#!j§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,<§ = new Point();
            do
            {
               super(param1.§0"!§.§0z§);
               do
               {
                  this.§9J§ = param1;
               }
               while(_loc2_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      public function initialize() : void
      {
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §;!;§(true);
               addr71:
               if(_loc2_)
               {
                  continue;
               }
               §>7§.§];§(true);
               while(!_loc2_)
               {
                  addEventListeners();
                  if(!(_loc2_ && this))
                  {
                     return;
                  }
               }
               while(_loc1_ || _loc2_)
               {
                  §§goto(addr71);
               }
               while(true)
               {
                  this.§9J§.§0"!§.§0z§.objects.setGroundTextureEnabled(false);
                  §§goto(addr64);
               }
               addr64:
               addr88:
            }
         }
         §§goto(addr88);
      }
      
      public function activate() : void
      {
      }
      
      override public function update(param1:Number) : void
      {
      }
      
      public function get §%-§() : Point
      {
         return this.§,<§;
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_DOWN));
         }
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.handleMouseMove(param1,param2);
            do
            {
               if(this.§,<§ == null)
               {
                  if(!(_loc4_ && param2))
                  {
                     this.§,<§ = new Point(param1,param2);
                  }
                  while(_loc4_)
                  {
                  }
                  continue;
               }
               addr60:
               this.§,<§.setTo(param1,param2);
               while(true)
               {
               }
               addr60:
               while(true)
               {
                  dispatchEvent(new MouseEvent(MouseEvent.MOUSE_MOVE));
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr60);
               }
               §§goto(addr32);
            }
            while(!(_loc3_ || param1));
            
            return;
         }
         §§goto(addr60);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(param1);
         }
      }
   }
}

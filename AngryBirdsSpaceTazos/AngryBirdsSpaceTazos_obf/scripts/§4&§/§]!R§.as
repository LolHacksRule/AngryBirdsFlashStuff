package §4&§
{
   import §7!8§.DisplayObject;
   
   public class §]!R§ extends §#r§
   {
       
      
      private var §&M§:Vector.<§#r§>;
      
      private var §%"G§:§#r§;
      
      public function §]!R§(param1:String, param2:§,C§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§&M§ = new Vector.<§#r§>();
            do
            {
               super(param1,param2);
            }
            while(_loc4_);
            
         }
      }
      
      public function §["7§(param1:String, param2:§#r§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(param2 != null)
            {
               do
               {
                  if(!this.§%"G§)
                  {
                     if(!_loc3_)
                     {
                        this.§%"G§ = param2;
                     }
                     while(_loc4_)
                     {
                        while(true)
                        {
                        }
                     }
                     addr74:
                     throw new Error("Trying to add a null animation");
                     addr58:
                  }
                  while(true)
                  {
                     this.§&M§.push(param2);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr58);
                  }
               }
               while(_loc3_);
               
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr70);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§%"G§.addFrame(param1,param2);
         }
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§%"G§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§%"G§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§%"G§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§%"G§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §#r§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§#r§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§&M§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && param1)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(!(_loc6_ && param1))
                  {
                     break;
                  }
               }
            }
            return this.§%"G§;
         }
         return _loc2_;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§%"G§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§#r§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§&M§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      override public function get subAnimationCount() : int
      {
         return this.§&M§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §#r§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr97:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           return this.§&M§[param1];
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return null;
                     addr67:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr95:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(§§pop() < this.§&M§.length);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               if(!(_loc3_ || _loc3_))
               {
                  §§goto(addr97);
               }
               §§goto(addr67);
            }
            else
            {
               §§goto(addr95);
            }
         }
      }
   }
}

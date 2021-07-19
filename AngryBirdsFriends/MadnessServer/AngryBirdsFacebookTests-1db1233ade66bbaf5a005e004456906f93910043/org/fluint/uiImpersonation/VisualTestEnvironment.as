package org.fluint.uiImpersonation
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class VisualTestEnvironment implements IVisualTestEnvironment
   {
       
      
      private var _testEnvironment:Sprite;
      
      public function VisualTestEnvironment(baseClass:Class)
      {
         super();
         this._testEnvironment = new baseClass();
      }
      
      public function get testEnvironment() : Sprite
      {
         return this._testEnvironment;
      }
      
      public function addChild(child:DisplayObject) : DisplayObject
      {
         return this.testEnvironment.addChild(child);
      }
      
      public function addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         return this.testEnvironment.addChildAt(child,index);
      }
      
      public function removeChild(child:DisplayObject) : DisplayObject
      {
         return this.testEnvironment.removeChild(child);
      }
      
      public function removeChildAt(index:int) : DisplayObject
      {
         return this.testEnvironment.removeChildAt(index);
      }
      
      public function removeAllChildren() : void
      {
         while(this.numChildren > 0)
         {
            this.removeChildAt(0);
         }
      }
      
      public function getChildAt(index:int) : DisplayObject
      {
         return this.testEnvironment.getChildAt(index);
      }
      
      public function getChildByName(name:String) : DisplayObject
      {
         return this.testEnvironment.getChildByName(name);
      }
      
      public function getChildIndex(child:DisplayObject) : int
      {
         return this.testEnvironment.getChildIndex(child);
      }
      
      public function setChildIndex(child:DisplayObject, newIndex:int) : void
      {
         this.testEnvironment.setChildIndex(child,newIndex);
      }
      
      public function get numChildren() : int
      {
         return this.testEnvironment.numChildren;
      }
      
      public function addElement(element:DisplayObject) : DisplayObject
      {
         throw new Error("getElementIndex not available in non Flex 4 projects");
      }
      
      public function addElementAt(element:DisplayObject, index:int) : DisplayObject
      {
         throw new Error("getElementIndex not available in non Flex 4 projects");
      }
      
      public function removeElement(element:DisplayObject) : DisplayObject
      {
         throw new Error("getElementIndex not available in non Flex 4 projects");
      }
      
      public function removeElementAt(index:int) : DisplayObject
      {
         throw new Error("getElementIndex not available in non Flex 4 projects");
      }
      
      public function removeAllElements() : void
      {
         throw new Error("getElementIndex not available in non Flex 4 projects");
      }
      
      public function setElementIndex(element:DisplayObject, index:int) : void
      {
         throw new Error("getElementIndex not available in non Flex 4 projects");
      }
      
      public function getElementAt(index:int) : DisplayObject
      {
         throw new Error("getElementIndex not available in non Flex 4 projects");
      }
      
      public function getElementIndex(element:DisplayObject) : int
      {
         throw new Error("getElementIndex not available in non Flex 4 projects");
      }
   }
}
